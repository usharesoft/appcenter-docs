.. Copyright 2017 FUJITSU LIMITED

.. _modify-ip:

Modifying the UForge IP
-----------------------

To modify the UForge IP you will need to:

1. Stop the following services:

	.. code-block:: shell

		service tomcat stop 
		service oar-server stop 
		service squid stop
		service rabbitmq-server stop 
		service eventcontroller stop

2. Clean the squid cache as follows:

	.. code-block:: shell

		[root@db ~]# grep cache_dir /etc/squid/squid.conf
		cache_dir ufs /data/proxy 10000 16 256
		[root@db ~]# rm -rf /data/proxy/*

3. Modify all occurences of the old IP to the new IP in the following files:

	* ``/etc/UShareSoft/uforge/uforge.conf``
	* ``/var/opt/UShareSoft/uforge-client/gwt/uforge/templates/forge-config.xml``
	* ``/etc/httpd/conf.d/uforge-ui.conf``
	* ``/etc/squid/squid.conf``

For example:

	.. code-block:: shell

		sed -i.bak "s/192\.168\.2\.177/192.168.2.200/g" /etc/UShareSoft/uforge/uforge.conf /var/opt/UShareSoft/uforge-client/gwt/uforge/templates/forge-config.xml /etc/httpd/conf.d/uforge-ui.conf /etc/squid/squid.conf

4. Modify all occurences of the old IP to the new IP in the following files: 

	* ``/etc/sysconfig/network-scripts/ifcfg-ens160``
	* ``/etc/hosts``

For exemple: 

	.. code-block:: shell

		sed -i "s/192\.168\.2\.177/192.168.2.200/g" /etc/sysconfig/network-scripts/ifcfg-ens160 /etc/hosts

5. Restart the network service::

	service network restart

.. note:: You will need to open a new terminal and connect to the machine using the new IP.

6. Restart the services as follows::

	$ /opt/UShareSoft/uforge/tools/update_scripts/uforge_update.sh
	$ /opt/UShareSoft/uforge-client/bin/uforge_ui_update.sh
	$ service oar-server start

.. note:: While oar-server is down, root user may receive emails with an error message about UForge cron execution.
