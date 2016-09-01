.. Copyright 2016 FUJITSU LIMITED

.. _proprietary-pkg:

Hosting Proprietary Packages
----------------------------

Proprietary packages, such as Red Hat Enterprise Linux are not delivered as part of the UForge repository. You must have the original ISO images of the operating system in questions and follow the steps below.

For example, to add a Red Hat repository:

	1. Mount the iso into ``/mnt`` (on the works node)

	2. Create the appropriate directory layout under ``/tmp/USER_DATA/repos/`` for example: ``/tmp/USER_DATA/repos/RHEL/6.5/x86_64/``

	3. Copy all the contents of the DVD into ``/tmp/USER_DATA/repos/RHEL/6.5/x86_64/``
	
	4. If the repository does not already contain a repodata folder, you must create it inside the package directory:

	.. code-block:: shell

		$ cd /tmp/USER_DATA/repos/RHEL/6.5/x86_64/
		$ createrepo .	

	5. Create a file in ``/etc/httpd/conf.d`` called ``repos.conf``. The file should contain the following:

	.. code-block:: shell

		Alias /repos /tmp/USER_DATA/repos

		<Directory /tmp/USER_DATA/repos>
		    Options +Indexes
		</Directory>

	6. Run the following from the command line:

	.. code-block:: shell

		service httpd restart

	7. Create the repository using the UForge CLI as follows:

	.. code-block:: shell

		$ uforge org repo create --name "RHEL 6.5 os" --repoUrl "http://MACHINE_IP/repos/RHEL/6.5/x86_64/" --type RPM -u $ADMIN -p $PASS

	The ``–-name`` specified here is the “tagname” that will be shown in the UI when creating an appliance.

	8. Attach the repository to the distribution as follows:

	.. code-block:: shell

		$ uforge org repo os attach --name RHEL --repoIds 954 -u $ADMIN -p $PASS

	9. Populate the repository packages:

	.. code-block:: shell

		$ /opt/UShareSoft/uforge/cron/update_repos_pkgs.sh

	This procedure may take a long time.

	10. To verify if the procedure is terminated, run the following command:

	.. code-block:: shell

		$ tail -f /tmp/USER_DATA/FactoryContainer/logs/repos/spider/<directory name with date>/spider.stdout 

	The procedure is terminated when you see the line::

		INFO  CheckForRepositoriesUpdates:275 - Entering CheckForRepositoriesUpdates->terminate()

	11. Create an OS profile based on packages (minimal, server, etc.):

	.. code-block:: shell

		$ /opt/UShareSoft/uforge/bin/runjob.py sorter_low_prio -a x86_64 -d RHEL -v 6.5
