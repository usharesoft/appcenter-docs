.. Copyright 2017 FUJITSU LIMITED

.. _modify-ip:

Modifying the UForge IP
-----------------------

.. note:: This procedure is only valid for mono node UForge platforms. For an example of modify the IP in a multi-node environment, refer to :ref:`modify-multinode-ip`.

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


.. _modify-multinode-ip:

Modifying the UForge IP in a Multi-Node Environment
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The following is an example of modifying the UForge IP in a multi-node environment. This example should be modified to correspond to your platform configuration.

The environment in this example has four nodes:

	* Node 1 for the UI
	* Node 2 for the Web Service
	* Node 3 for the DB with the OAR service Manager, RabbitMQ and UForge Event Controller
	* Node 4 for the Compute Node

Old DB IP: 10.1.2.180 

New DB IP: 10.1.2.25

1. Stop the following services:

    On the WS node and UI node run:

    .. code-block:: shell

        $ service tomcat stop

    On the DB node run:

    .. code-block:: shell 

		$ service oar-server stop
		$ service squid stop
		$ service rabbitmq-server stop
		$ service eventcontroller stop

2. Clean the Squid cache as follows: 

    Search and delete the cache directory in the DB node

    .. code-block:: shell

        $ grep cache_dir /etc/squid/squid.conf
         cache_dir ufs /data/proxy 10000 16 256
        $ rm -rf /data/proxy/*

3. Modify all occurences of the old IP to the new IP in the following files:

    Modify ``uforge.conf`` and ``squid.conf`` modification in all nodes:

    .. code-block:: shell     

        $ sed -i.bak "s/10.1.2.180/10.1.2.25/g" /etc/UShareSoft/uforge/uforge.conf
        $ sed -i.bak "s/10.1.2.180/10.1.2.25/g" /etc/squid/squid.conf

    If the IP of the UI node or WS node was changed, the following files have to be modified on UI node:

    	* /var/opt/UShareSoft/uforge-client/gwt/uforge/templates/forge-config.xml
    	* /etc/httpd/conf.d/uforge-ui.conf 

4. Modify all occurences of the old IP to the new IP in the following files:

    Modify ``ifcfg-ens160`` only on the node which IP will be changed

	.. code-block:: shell    
        
		$ sed -i  "s/10.1.2.180/10.1.2.25/g" /etc/sysconfig/network-scripts/ifcfg-ens192  
    
    Modify ``/etc/hosts`` on all nodes    

    .. code-block:: shell

		$ sed -i  "s/10.1.2.180/10.1.2.25/g" /etc/hosts for each node

5. Restart the network service only for the node where the IP has been changed::
    
	$ service network restart

6. Restart the services as follows:

    a) Execute ``uforge_update.sh`` script on all nodes in the next order: 

    	* Compute node 
    	* DB node 
    	* WS node 
    	* UI node

    .. code-block:: shell

    	$ /opt/UShareSoft/uforge/tools/update_scripts/uforge_update.sh

    b) Start oar-server in the DB node::

		$ service oar-server start

    c) If the IP of the UI node or WS node was changed, the next script has to be executed in the UI node::

		$ /opt/UShareSoft/uforge-client/bin/uforge_ui_update.sh
