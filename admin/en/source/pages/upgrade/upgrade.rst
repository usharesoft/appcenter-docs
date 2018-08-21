.. Copyright 2017 FUJITSU LIMITED

.. _upgrade-yum:

Updating an Existing UForge Deployment
--------------------------------------

All the UForge components are delivered as native RPM packages. We maintain a custom repository of the UForge platform. All updates are added to this repository. The update mechanism of a remote UForge platform uses the standard “yum” command-line package management utility.

.. image:: /images/uforge-update-repo.jpg

In order to interact with the official package repository, you must already have an active UForge license (stored in Fujitsu's database) and corresponding authentication credentials, set during the initial install of the platform. The authentication credentials are stored in the ``uforge.conf`` file and used in the ``uforge-ee.repo`` file. To view these files:

.. code-block:: shell

	$ vi /etc/UShareSoft/uforge/uforge.conf
	UFORGE_PRODUCT_ACCESS_USER=username
	UFORGE_PRODUCT_ACCESS_PASSWORD=password

.. warning:: You should never update the following file: ``/etc/yum.repo.d/uforge-ee-repo``

The request to update uses these credentials via HTTPS to Fujitsu who then determines whether you have the access rights to update the platform.

You must also have set up the yum repo file to authorize UForge updates using configure_yum_repos.sh as follows:

.. code-block:: shell

	$ /opt/UShareSoft/uforge/conf/configure_yum_repos.sh -u <uss account user> -p <uss account password> -t <uforge install type>

The (optional) parameter <uforge install type> can take the values ``uforge-ee`` or ``uforge-dev``. By default ``uforge-ee`` is used.

.. note:: Before upgrading UForge, make sure that no cron jobs are running. For more information on cron jobs, refer to :ref:`watchdog-services`.

.. note:: It is recommended to take a snapshot of all impacted VMs before starting the update procedure, in case you need to rollback.

To update the platform, use the "yum" command-line tool as follows:

.. note:: Running ``yum update`` may also update OS packages from CentOS official repository. You should accept all the updates because UForge is qualified based on the latest packages.

.. code-block:: shell

	$ yum update 

	Loaded plugins: presto
	UForge-ee-uforge                                               |  951 B     00:00     
	UForge-ee-uforge/primary                                       | 1.9 kB     00:00     
	UForge-ee-uforge                                                                                           
	                                                                                   4/4
	UForge-ee-uforge-client                                        |  951 B     00:00     
	UForge-ee-uforge-client/primary                                | 1.0 kB     00:00     
	UForge-ee-uforge-client                                                                                       
	                                                                                   4/4
	fedora/metalink                                                     | 2.6 kB     00:00     
	fedora                                                              | 4.3 kB     00:00     
	fedora/primary_db                                                   |  13 MB     00:36     
	updates/metalink                                                    | 1.9 kB     00:00     
	updates                                                             | 4.7 kB     00:00     
	updates/primary_db                                                  | 6.4 MB     00:21     
	Setting up Update Process
	Resolving Dependencies
	--> Running transaction check
	---> Package MySQL-client.x86_64 0:5.5.23-1.linux2.6 set to be installed
	---> Package MySQL-server.x86_64 0:5.5.23-1.linux2.6 set to be installed
	---> Package MySQL-shared.x86_64 0:5.5.23-1.linux2.6 set to be installed
	---> Package glassfish.noarch 0:3.1-2 set to be updated
	---> Package perl-Compress-Raw-Zlib.x86_64 0:2.030-1.fc13 set to be updated
	---> Package perl-Test-Simple.noarch 0:0.94-1.fc13 set to be updated
	---> Package perl-parent.noarch 1:0.223-3.fc13 set to be updated
	---> Package perl-threads.x86_64 0:1.81-1.fc13 set to be updated
	---> Package uforge.noarch 0:3.2.5-0 set to be updated
	---> Package uforge-client.noarch 0:3.2.5-0 set to be updated
	--> Finished Dependency Resolution

	Dependencies Resolved
	=================================================================================================
	 Package                        Arch           Version              Repository             Size
	=================================================================================================
	Installing:
	 MySQL-client                   x86_64         5.5.23-1.linux2.6    UForge-ee-mysql        14 M
	     replacing  MySQL-client.x86_64 5.5.17-1.linux2.6
	 MySQL-server                   x86_64         5.5.23-1.linux2.6    UForge-ee-mysql        40 M
	     replacing  MySQL-server.x86_64 5.5.17-1.linux2.6
	 MySQL-shared                   x86_64         5.5.23-1.linux2.6    UForge-ee-mysql        1.7 M
	     replacing  MySQL-shared.x86_64 5.5.17-1.linux2.6
	Updating:
	 glassfish                      noarch         3.1-2                UForge-ee-glassfish    85 M
	 perl-Compress-Raw-Zlib         x86_64         2.030-1.fc13         updates                57 k
	 perl-Test-Simple               noarch         0.94-1.fc13          updates                116 k
	 perl-parent                    noarch         1:0.223-3.fc13       fedora                 13 k
	 perl-threads                   x86_64         1.81-1.fc13          updates                47 k
	 uforge                    noarch         3.2.5-0              UForge-ee-uforge  38 M

	Transaction Summary
	=================================================================================================
	Install       3 Package(s)
	Upgrade       7 Package(s)

	Total download size: 204 M
	Is this ok [y/N]: y

	<traces removed for readability>

	....

	Complete!

The RPM packages will be replaced and the services will be reconfigured to correctly update the platform.  If you have a multi-node UForge platform, then this command must be run on all the nodes. The updates should be run in the following order:

	1. database node
	2. compute node(s)
	3. web service and Portal nodes

Run the following CLI command in order to know if Squid is running:

	.. code-block:: shell

		$ service squid status
		
	
	If squid is stopped, run the following command-line
	
	.. code-block:: shell

		$ service squid start	

.. note:: When you are upgrading from UForge 3.8.FP3 or an earlier version there is an additional step to be done manually if you are in a multi-node environment. You have to copy the file ``/etc/UShareSoft/vault/root_token`` from database node to web service node and launch ``service tomcat restart`` on the web service node. This file will be used to configure access to the secret manager.


