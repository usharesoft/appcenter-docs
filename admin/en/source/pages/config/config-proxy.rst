.. Copyright 2017 FUJITSU LIMITED

.. _config-proxy:

Configuring UForge Behind Enterprise Proxy
------------------------------------------

Once your UForge platform deployment is complete you can configure it behind your enterprise proxy if you have not already done so with the deployment wizard.  You can configure UForge to use both an HTTP(S) and/or a SOCKS5 proxy.

.. note:: If you have a proxy and you wish to register machine images to AWS, you will require to configure UForge to use a SOCKS5 server.

To configure UForge to use a proxy:


	1. Open ``/etc/UShareSoft/uforge/uforge.conf``, and then update the following attributes:


		For HTTP(S) modify:

			* EXTERNAL_PROXY_HOST =
			* EXTERNAL_PROXY_PORT =
			* EXTERNAL_PROXY_USER =
			* EXTERNAL_PROXY_PASSWORD =

		For SOCKS5 modify:

			* SOCKS5_HOST =
			* SOCKS5_PORT =
			* SOCKS5_LOGIN =
			* SOCKS5_PASSWORD =

		The user and password information is optional.

	2. Run the following command on all the nodes (if multi-node the following order should be respected: compute notes, db nodes, web service nodes):

		.. code-block:: shell

			$ /opt/UShareSoft/uforge/tools/update_scripts/uforge_update.sh
