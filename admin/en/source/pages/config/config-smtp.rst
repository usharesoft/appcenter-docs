.. Copyright 2017 FUJITSU LIMITED

.. _config-smtp:

Configuring SMTP Proxy
----------------------

Once your UForge platform deployment has been done you can configure SMTP proxy as follows. In /etc/UShareSoft/uforge/uforge.conf you can modify:

	* UFORGE_RELAY_HOST=
	* UFORGE_RELAY_PORT=
	* UFORGE_RELAY_USER=
	* UFORGE_RELAY_PASSWORD=

These can be empty

Then run::

	/opt/UShareSoft/uforge/conf/postfix_configure.sh
