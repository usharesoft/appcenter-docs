.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

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
			- UFORGE_GF_INTERNAL_IP
			- UFORGE_EXTERNAL_HOSTNAME
			- UFORGE_NFS_*
			- UFORGE_IAAS_DOWNLOAD_URL
		* /etc/udev/rules.d/70-persistent-net.rules

	4. Launch the following script::

		$ /opt/UShareSoft/uforge/tools/update_scripts/uforge_update.sh

If you have a load balancer where rules have been entered for accessing the UForge web service make sure the URIs match the following parameter in uforge.conf::

	UFORGE_GF_WEBSVC_ROOT_CONTEXT=ufws

For the UForge CLI you should have::

	UFORGE_GF_ADMIN_WEBSVC_ROOT_CONTEXT=ufadmws

.. note: Some virtualization solutions (like VirtualBox) also add this info into ifcfg-XXX files as HWADDR=MAC