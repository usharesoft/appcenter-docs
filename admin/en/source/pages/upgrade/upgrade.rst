.. Copyright 2017-2019 FUJITSU LIMITED

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

.. warning:: You should never update the following file: ``/etc/yum.repos.d/uforge-ee-repo``

The request to update uses these credentials via HTTPS to Fujitsu who then determines whether you have the access rights to update the platform.

You must also have set up the yum repo file to authorize UForge updates using configure_yum_repos.sh as follows:

.. code-block:: shell

	$ /opt/UShareSoft/uforge/conf/configure_yum_repos.sh -u <uss account user> -p <uss account password> -t <uforge install type>

The (optional) parameter <uforge install type> can take the values ``uforge-ee`` or ``uforge-dev``. By default ``uforge-ee`` is used.

.. note:: Before upgrading UForge, make sure that no cron jobs are running. For more information on cron jobs, refer to :ref:`watchdog-services`.

.. note:: It is recommended to take a snapshot of all impacted VMs before starting the update procedure, in case you need to rollback.

To update the platform, use the "yum" command-line tool as follows:

	1. Run ``yum update uforge-common``.
	2. Run ``yum update uforge uforge-cli uforge-client uforge-gen``.

	The RPM packages will be replaced and the services will be reconfigured to correctly update the platform.  If you have a multi-node UForge platform, then this command must be run on all the nodes. The updates should be run in the following order:

		1. database node
		2. compute node(s)
		3. web service and Portal nodes

	3. Run the following CLI command in order to know if Squid is running:

		.. code-block:: shell

			$ systemctl status squid


		If squid is stopped, run the following command-line

		.. code-block:: shell

			$ systemctl start squid

.. note:: If you are in a multi-node environment, there will be extra steps to do manually, depending on the version you are upgrading from. 

	- For UForge 3.8.FP3 and earlier versions, copy the file ``/etc/UShareSoft/vault/root_token`` from database node to web service node and launch ``service tomcat restart`` on the web service node. This file will be used to configure access to the secret manager. Then you will also need to follow the instructions for upgrading from 3.8.FP5.
	- For UForge 3.8.FP5 and earlier versions run the following commands on each node using the shared storage to update NFS mount options:

	.. code-block:: shell

		$ sed -i "s@vers=3@vers=3,lookupcache=positive@g" /etc/init.d/mountisos
		$ service mountisos restart
		$ systemctl daemon-reload
