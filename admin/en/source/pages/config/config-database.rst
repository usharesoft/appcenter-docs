.. Copyright 2018 FUJITSU LIMITED

.. _config-database:

Configuring the Database
------------------------

UForge uses the MariaDB database to store all the UForge meta-data and user information. The web service communicates with the database using hibernate. When installing UForge using the deployment wizard, one database instance is configured.

.. note:: By default no mechanism is configured to backup the contents of the UForge database.  MariaDB can be configured as a cluster or in master-slave mode to provide reliability and to have a replicate of the data.  Regular backups of the database should also be done. 

The MariaDB database has the following basic configuration information that is stored in a central configuration file: ``uforge.conf``. The main configuration attributes for the database are:

	* Administration credential information (user and password)
	* Address of the uforge database host.

When installing UForge via the deployment wizard some of the configuration attributes can be decided by the administrator. The deployment wizard also creates the ``uforge.conf`` file with all the configuration information.

If you decide to change database configuration information including the password, then you must also update the ``auth.conf`` and ``uforge.conf`` files with the correct information on all the nodes of the platform.

To view the ``uforge.conf`` or ``auth.conf`` files:

	1. Log in to the web service node as root::
	
		$ ssh root@<ip address of the node>

	2. Open the uforge.conf file or auth.conf files::

		$ vi /etc/UShareSoft/uforge/uforge.conf
		$ vi /etc/UShareSoft/auth.conf

	3. After making appropriate changes in these files, you should run the following command on all the nodes (if multi-node the following order should be respected: compute notes, db nodes, web service nodes)::

		$ /opt/UShareSoft/uforge/tools/update_scripts/uforge_update.sh

For more information on MariaDB, see `http://www.mariadb.com <http://www.mariadb.com>`_
