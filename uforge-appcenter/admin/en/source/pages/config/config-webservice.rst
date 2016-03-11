.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _config-webservice:

Configuring the Web Service
---------------------------

Each UForge Web Service instance runs inside a Glassfish application server. The web service has the following basic configuration information that is stored in a central configuration file: uforge.conf. The main configuration attributes for the web service are:

	* External hostname used for incoming user connections
	* External hostname for downloading images (this uses port 80 allowing all cloud platforms to be able to communicate with UForge for publishing images)
	* Internal IP address used to connect with the other UForge services
	* HTTP port (default: 9090)
	* HTTPS port (default: 443)
	* Administration console port (default: 4848)
	* Administration console credential information (user and password)
	* Root context of the web service (for example ufws-3.3)

When installing UForge via the deployment wizard some of the configuration attributes can be decided by the administrator. The deployment wizard also creates the uforge.conf file with all the configuration information.  

To view the uforge.conf file:

	1. Log in to the web service node as root

.. code-block::

# ssh root@<ip address of the node>

	2. Open the uforge.conf file

.. code-block::

# vi /etc/UShareSoft/uforge/uforge.conf


For more information on Glassfish, see `http://glassfish.java.net <http://glassfish.java.net>`_