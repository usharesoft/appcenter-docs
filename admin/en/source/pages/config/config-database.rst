.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _config-database:

Configuring the Database
------------------------

UForge uses the MariaDB database to store all the UForge meta-data and user information. The web service communicates with the database using hibernate. When installing UForge using the deployment wizard, one database instance is configured.

.. note:: By default no mechanism is configured to backup the contents of the UForge database.  MariaDB can be configured as a cluster or in master-slave mode to provide reliability and to have a replicate of the data.  Regular backups of the database should also be done. 

The MariaDB database has the following basic configuration information that is stored in a central configuration file: ``uforge.conf``. The main configuration attributes for the database are:

	* Administration credential information (user and password)
	* Address of the uforge database host.

When installing UForge via the deployment wizard some of the configuration attributes can be decided by the administrator. The deployment wizard also creates the ``uforge.conf`` file with all the configuration information. To view the ``uforge.conf`` file:

	1. Log in to the web service node as root::
	
		ssh root@<ip address of the node>

	2. Open the uforge.conf file::

		vi /etc/UShareSoft/uforge/uforge.conf

For more information on MariaDB, see `http://www.mariadb.com <http://www.mariadb.com>`_
