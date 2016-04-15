.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _config-smtp:

Configuring UForge Behind Enterprise Proxy
------------------------------------------

Once your UForge platform deployment has been done you can configure SMTP proxy as follows. In /etc/UShareSoft/uforge/uforge.conf you can modify:

	* UFORGE_RELAY_HOST=
	* UFORGE_RELAY_PORT=
	* UFORGE_RELAY_USER=
	* UFORGE_RELAY_PASSWORD=

These can be empty

Then run::

	/opt/UShareSoft/uforge/conf/uforge_update.sh