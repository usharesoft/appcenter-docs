.. Copyright 2016 FUJITSU LIMITED

.. _customize-platform:

Customizing the Platform
========================

You can customize some elements of your UForge Portal using the config.xml file located in: ``/etc/UShareSoft/uforge/uforge.conf``. This is a relative path.


Configuring UForge Sign Up Information
--------------------------------------

To modify the UForge sign up information, you can modify the following variables in the uforge.conf file.

	* ``UFORGE_REGISTRATION_USER``
	* ``UFORGE_REGISTRATION_CODE``
	* ``UFORGE_REGISTRATION_PASSWORD``

To apply the changes you made, run the following command. This will stop Tomcat, integrate the changes and restart Tomcat::

	$ /opt/UShareSoft/uforge-client/bin/uforge_ui_update.sh


Configuring Email Notification Sender
-------------------------------------

To modify the sender of automatic emails generated from UForge, you can modify:

	* ``UFORGE_REGISTRATIONS_EMAIL``

To apply the changes you made, run the following command. This will stop Tomcat, integrate the changes and restart Tomcat::

	$ /opt/UShareSoft/uforge/tools/update_scripts/uforge_update.sh


Modifying UForge WebService URL
-------------------------------

To modify the UForge webservice URL, you can modify the following variable in the uforge.conf file:

	``UFORGE_URL``

To apply the changes you made, run the following command. This will stop Tomcat, integrate the changes and restart Tomcat::

	$ /opt/UShareSoft/uforge-client/bin/uforge_ui_update.sh

.. _modify-ui-root:

Modifying UForge Portal Application Root Context 
------------------------------------------------

To modify the UForge root context of the UForge Portal, you can modify the following variable in the uforge.conf file:

	``UFORGE_UI_ROOT_CONTEXT``

To apply the changes you made, run the following command. This will stop Tomcat, integrate the changes and restart Tomcat::

	$ /opt/UShareSoft/uforge-client/bin/uforge_ui_update.sh

.. _modify-API-root:

Modifying UForge API Root Context 
---------------------------------

By default the root context for the UForge API is set to ``/api``. To change the UForge API root context, modify the following variable in the uforge.conf file:

	``UFORGE_API_ROOT_CONTEXT``

To apply the changes you made, run the following command. This will stop Tomcat, integrate the changes and restart Tomcat::

	$ /opt/UShareSoft/uforge-client/bin/uforge_ui_update.sh
