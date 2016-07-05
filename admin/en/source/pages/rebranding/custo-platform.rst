.. Copyright 2016 FUJITSU LIMITED

.. _customize-platform:

Customizing the Platform
========================

You can customize some elements of your UForge Portal using the config.xml file located in: /etc/UShareSoft/uforge/uforge.conf. This is a relative path.


Configuring UForge Sign Up Information
--------------------------------------

To modify the UForge sign up information, you can modify the following variables in the uforge.conf file.

	* UFORGE_REGISTRATION_CODE
	* UFORGE_REGISTRATION_USER
	* UFORGE_REGISTRATION_PASSWORD

To apply the changes you made, run the following command. This will stop Tomcat, integrate the changes and restart Tomcat::

	# /opt/UShareSoft/uforge-client/bin/uforge_ui_update.sh

Modifying UForge WebService URL
-------------------------------

To modify the UForge webservice URL, you can modify the following variable in the uforge.conf file:

``UFORGE_URL``

To apply the changes you made, run the following command. This will stop Tomcat, integrate the changes and restart Tomcat::

	# /opt/UShareSoft/uforge-client/bin/uforge_ui_update.sh

.. _modify-ui-root:

Modifying UForge Portal Application Root Context 
------------------------------------------------

To modify the UForge root context of the UForge Portal, you can modify the following variable in the uforge.conf file:

``UFORGE_UI_ROOT_CONTEXT``

To apply the changes you made, run the following command. This will stop Tomcat, integrate the changes and restart Tomcat::

	# /opt/UShareSoft/uforge-client/bin/uforge_ui_update.sh

.. _modify-API-root:

Modifying UForge API Root Context 
---------------------------------

By default the root context for the UForge API is set to ``/api``. To change the UForge API root context, modify the following variable in the uforge.conf file:

``UFORGE_API_ROOT_CONTEXT``

To apply the changes you made, run the following command. This will stop Tomcat, integrate the changes and restart Tomcat::

	# /opt/UShareSoft/uforge-client/bin/uforge_ui_update.sh

.. _modify-IP:

Modifying the UForge IP address
-------------------------------

To modify the UForge IP address or hostname, do the following:

	1. If UForge is installed on a single node, launch a terminal on the UForge machine. 
	2. Use system-config-network to modify hostname <MY-NEW-HOSTNAME>. It should also allow you to change the host name (that is the fully qualified domain name like ufiab.mycompany.com). This will apply the changes automatically to the directories in /etc/sysconfig  
	3. Ensure that the changes are applied in the following locations, otherwise make the appropriate changes:

		/etc/sysconfig subdirectory files like ifcfg-XXX where XXX is your main interface name (like eth0)
		/etc/sysconfig/network for HOSTNAME and GATEWAY
		/etc/resolv.conf for your DNS configuration
		/etc/hosts for all host definitions
		/etc/fstab for remote NFS mounts
		/etc/UShareSoft/uforge/uforge.conf for the following entries:
		UFORGE_GF_INTERNAL_IP
		UFORGE_EXTERNAL_HOSTNAME
		UFORGE_NFS_*
		UFORGE_IAAS_DOWNLOAD_URL
		/etc/udev/rules.d/70-persistent-net.rules

	4. Launch the following script::

		$ /opt/UShareSoft/uforge/tools/update_scripts/uforge_update.sh

	5. If you have a load balancer where rules have been entered for accessing the UForge web service make sure the URIs match the following parameter in uforge.conf::

		UFORGE_GF_WEBSVC_ROOT_CONTEXT=ufws-3.3

	For the UForge CLI you should have::

		UFORGE_GF_ADMIN_WEBSVC_ROOT_CONTEXT=ufadmws-3.3

.. note:: Some virtualization solutions (like VirtualBox) also add this info into ifcfg-XXX files as HWADDR=MAC
