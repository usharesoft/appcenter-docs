.. Copyright 2017 FUJITSU LIMITED

.. _modify-ip:

Modifying the UForge IP
-----------------------

You can modify the UForge IP on a mono-node deployment by changing all the occurences of <OLD IP> to <NEW IP> in the following files:

	* ``/etc/UShareSoft/uforge/uforge.conf``
	* ``/var/opt/UShareSoft/uforge-client/gwt/uforge/templates/forge-config.xml``
	* ``/etc/httpd/conf.d/uforge-ui.conf``
	* ``/etc/squid/squid.conf``

.. note:: You must then restart the services.

For example:

1. Open file ``/etc/UShareSoft/uforge/uforge.conf`` and modify all occurences of the old IP to the new IP. For example: ``UFORGE_GF_INTERNAL_IP=10.1.2.207`` to: ``UFORGE_GF_INTERNAL_IP=192.168.1.10``

2. Open file ``/var/opt/UShareSoft/uforge-client/gwt/uforge/templates/forge-config.xml`` and modify all occurences of the old IP to the new IP. For example: ``<c:uForgeUrl>http://10.1.2.207:8080/ufws/</c:uForgeUrl>`` to ``<c:uForgeUrl>http://192.168.1.10:8080/ufws/</c:uForgeUrl>``.

3. Open file ``/etc/httpd/conf.d/uforge-ui.conf`` and modify all occurences of the old IP to the new IP. For example: ``ProxyPassMatch ^/uforge/resources(.*)$ http://10.1.2.207:8080/ufws$1`` to ``ProxyPassMatch ^/uforge/resources(.*)$ http://192.168.1.10:8080/ufws$1``

4. Open file ``/etc/squid/squid.conf`` and modify all occurences of the old IP to the new IP. For example: and modify all occurences of the old IP to the new IP. For example: ``acl uforge_nodes src 10.1.2.207/32`` to ``acl uforge_nodes src 192.168.1.10/32``

5. Restart the services as follows::

	$ /opt/UShareSoft/uforge/tools/update_scripts/uforge_update.sh
	$ /opt/UShareSoft/uforge-client/bin/uforge_ui_update.sh
