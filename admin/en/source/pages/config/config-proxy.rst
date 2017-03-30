.. Copyright 2017 FUJITSU LIMITED

.. _config-proxy:

Configuring UForge Behind Enterprise Proxy
------------------------------------------

Once your UForge platform deployment is complete you can configure it behind your enterprise proxy as follows, if you have not already done so with the deployment wizard:

	1. In ``/etc/UShareSoft/uforge/uforge.conf`` you can modify:

		* EXTERNAL_PROXY_HOST =
		* EXTERNAL_PROXY_PORT =
		* EXTERNAL_PROXY_USER =
		* EXTERNAL_PROXY_PASSWORD =

	2. Run the following command on all the nodes (if multi-node the following order should be respected: compute notes, db nodes, web service nodes):

		.. code-block:: shell

			$ /opt/UShareSoft/uforge/tools/update_scripts/uforge_update.sh
