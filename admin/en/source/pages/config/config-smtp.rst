.. Copyright 2016 FUJITSU LIMITED

.. _config-smtp:

Configuring UForge Behind Enterprise Proxy
------------------------------------------

Once your UForge platform deployment is complete you can configure SMTP proxy.  To configure SMTP:

	1. In ``/etc/UShareSoft/uforge/uforge.conf`` you can modify:

		* UFORGE_RELAY_HOST=
		* UFORGE_RELAY_PORT=
		* UFORGE_RELAY_USER=
		* UFORGE_RELAY_PASSWORD=

		These can be empty.

	2. Run the following command on all the nodes (if multi-node the following order should be respected: compute notes, db nodes, web service nodes):

		.. code-block:: shell

			$ /opt/UShareSoft/uforge/tools/update_scripts/uforge_update.sh
