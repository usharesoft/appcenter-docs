.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _config-database:

Configuring the Database
------------------------

The PerconaDB database has the following basic configuration information that is stored in a central configuration file, uforge.conf.  The main configuration attributes for the database are:

	* Administration credential information (user and password)
	* Port number (default: 3306)

When installing UForge via the deployment wizard some of the configuration attributes can be decided by the administrator. The deployment wizard also creates the uforge.conf file with all the configuration information. To view the uforge.conf file:

	1. Log in to the web service node as root::
	
		ssh root@<ip address of the node>

	2. Open the uforge.conf file::

		vi /etc/UShareSoft/uforge/uforge.conf

For more information on PerconaDB, see `http://www.percona.com <http://www.percona.com>`_
