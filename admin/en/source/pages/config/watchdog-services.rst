.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _watchdog-services:

Managing the Watchdog Services
------------------------------

UForge has a set of watchdog services that carry out housekeeping tasks on a regular basis.  These are:

	* Cleanup Tickets: Task to remove generated images that are no longer attached to a parent image ticket in the database. This happens when the user “deletes” the generated image from their account.  By default this is run once a day at 04:10AM.
	* Update Distribution Packages: Task to regularly search the operating system repositories for any new updates and synchronize metadata into the UForge database. By default this is run every hour.
	* Reset OAR Resources: Check the OAR scheduler resources and ensure that their state is “Active”.  By default this is run every 5 minutes.

Each of these housekeeping tasks are registered as a cron job in the first database node of the UForge platform to schedule the task to be run periodically.  The frequency of these tasks can be changed.

To change the frequency of these housekeeping tasks, you need to update the crontab. Each line of a crontab file represents a job and is composed of a CRON expression, followed by a shell command to execute. The syntax is:

``dw`` ``month`` ``day`` ``hr`` ``min`` followed by the command to be executed

Where:

	* ``dw`` is the day of the week (0 - 6) (0 is Sunday, or use names)
	* ``month`` is 1 - 12
	* ``day`` is day of the month (1 - 31)
	* ``hr`` is the hour (0 - 23) 
	* ``min`` is minutes (0 - 59)

To view these cron jobs, log in to the oar scheduler node as root and view the cron jobs:

.. code-block:: shell

	# crontab -l
	*/5 * * * * /opt/UShareSoft/uforge/cron/reset_oar_resources.sh
	10 2 * * * /opt/UShareSoft/uforge/cron/cleanup_tickets.sh
	10 3 * * * /opt/UShareSoft/uforge/cron/cleanup_scans.sh
	42 * * * * /opt/UShareSoft/uforge/cron/update_repos_pkgs.sh
	05 * * * * /opt/UShareSoft/uforge/cron/update_repos_local_cache.sh
	1 8 * * * /opt/UShareSoft/uforge/cron/drop_caches.sh

To update the crontab, log in to the oar scheduler node as root and edit the crontab

.. code-block:: shell

	# crontab -e

Cron Job Guidelines
~~~~~~~~~~~~~~~~~~~

There is no specific order to be respected when running cron jobs. These jobs are not inter-dependent.

``*/5 * * * * /opt/UShareSoft/uforge/cron/reset_oar_resources.sh``

This needs to be launched on a regular basis to avoid having issues with the OAR scheduler computation nodes. In fact, it happens, following network issue or other, that nodes move to state "Suspected". This job tries to fix that.

This job executes very quickly and does not take resources on the machine.
It is set by default to 5 minutes but this can be changed.

``10 2 * * * /opt/UShareSoft/uforge/cron/cleanup_tickets.sh``

When a user deletes a machine image persisted on the NAS, only the metadata is removed from the database to avoid using a webservice thread to delete the file. This could take time and should be done asynchronously. 

This job goes through the NAS and the database and checks which directories could be removed. 

This job could potentially take a long time and be IO-intensive. It is highly recommend to execute it when there is not a lot of activity on the platform. We have set this at 2:10AM because there is not a lot of activity on our platform at that time of day.

This script could be launched several times in a day depending on the size of the infrastructure. For example, if the NAS is not so big and if there are a lot of images created and deleted per day, it might be a good to launch it several times a day.

``10 3 * * * /opt/UShareSoft/uforge/cron/cleanup_scans.sh``

Same as for /opt/UShareSoft/uforge/cron/cleanup_tickets.sh

``42 * * * * /opt/UShareSoft/uforge/cron/update_repos_pkgs.sh``

This mechanism launches UForge Spider to crawl the packages from the registered repositories.

It is important to keep these repositories up to date so that:

	* when a user creates a new template, the latest package updates are listed
	* when a user checks the appliance library, the number of updates available are listed
	* the image generations is faster. If this is not done on a regular basis, when launching a generation, the repositories of the template distribution will be updated and the user will have to wait longer.

Also, if a repository the platform is connected to deletes packages (e.g. because of newer package version -- this is not the case of UShareSoft official repositories), having the latest packages  available is important.

``05 * * * * /opt/UShareSoft/uforge/cron/update_repos_local_cache.sh``

Since UForge 3.5.1, the UForge platform does not download all the packages from all the repositories listed. Instead, only the necessary packages are downloaded "on demand". 

In the case of repositories that remove packages (because of newer packages), it is important to be able to reproduce a machine image with the same packages even though these packages no longer exist on the remote repository.

The local partial copy of the repository is registered in the platform as another repository. Each time new packages are downloaded for a repository, the local directory is marked "to be refreshed". When ``update_repos_local_cache.sh`` is executed, it checks all the local repo directories tagged as "to be refreshed" and executes the tool to update the native distribution repository (for rhel : createrepo with options).

It is important to execute regularly if the repositories use removed packages.

On extremely large platforms, it could take time and be IO-intensive.

If this command fails, usually it will only have an impact several days later (depending on the removing-package-repo policy with package removal). For example, if you generate a machine image with a sticky package version 1.2.3 on NTP. Let's consider NTP is on a repository that removes packages. You generate a machine image and NTP gets downloaded. update_repos_local_cache.sh. You generate the machine image again. No issue. Three days later, 1.2.4 version is released and 1.2.3 is removed from the remote repository. In that case, you will no longer be able to generate as the package in not in the remote repository, nor in the cache.

``1 8 * * * /opt/UShareSoft/uforge/cron/drop_caches.sh``

This calls native Linux commands to free up some memory on the platform.

If this commands fails it means the platform (not UForge but the machine itself) is in bad shape. It has no direct consequence on the UForge platform (only side effect: usually, issue with memory).

