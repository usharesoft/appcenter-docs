.. Copyright 2017 FUJITSU LIMITED

.. _modify-ip:

Modifying the UForge IP Address
-------------------------------

To modify the UForge IP address or hostname, do the following.

	1. If UForge is installed on a single node, launch a terminal on the UForge machine. 

	2. Use system-config-network to modify hostname <MY-NEW-HOSTNAME>. It should also allow you to change the host name (that is the fully qualified domain name like ufiab.mycompany.com). This will apply the changes automatically to the directories in /etc/sysconfig  

	3. Ensure that the changes are applied in the following locations, otherwise make the appropriate changes:

		* /etc/sysconfig subdirectory files like ifcfg-XXX where XXX is your main interface name (like eth0)
		* /etc/sysconfig/network for HOSTNAME and GATEWAY
		* /etc/resolv.conf for your DNS configuration
		* /etc/hosts for all host definitions
		* /etc/fstab for remote NFS mounts
		* /etc/UShareSoft/uforge/uforge.conf for the following entries:
			- UFORGE_PROXY_INFOS
			- UFORGE_EXTERNAL_HOSTNAME
			- UFORGE_IAAS_DOWNLOAD_URL
			- UFORGE_NOREPLY_EMAIL
			- UFORGE_URL
		* /etc/udev/rules.d/70-persistent-net.rules

	4. Modify the header, footer, IP information in /var/opt/UShareSoft/uforge-client/gwt/uforge/templates/config.xml (except for <c:uForgeUrl>) with the EXTERNAL_URL variable. For more information on modifying the portal information, refer to :ref:`rebrand-considerations`.

	5. Launch the following two scripts::

		$ /opt/UShareSoft/uforge/tools/update_scripts/uforge_update.sh
		$ /opt/UShareSoft/uforge-client/bin/uforge_ui_update.sh

If you have a load balancer where rules have been entered for accessing the UForge web service make sure the URIs match the following parameter in uforge.conf::

	UFORGE_GF_WEBSVC_ROOT_CONTEXT=ufws-3.3

For the UForge CLI you should have::

	UFORGE_GF_ADMIN_WEBSVC_ROOT_CONTEXT=ufadmws-3.3

.. note: Some virtualization solutions (like VirtualBox) also add this info into ifcfg-XXX files as HWADDR=MAC
