.. Copyright 2017-2019 FUJITSU LIMITED

.. _config-amp:

Configuring Cloudsoft AMP
-------------------------

Once your UForge platform deployment is complete you can configure `Cloudsoft AMP <https://www.cloudsoft.io/amp/>`_ in order to allow users to deploy published machine images directly to Amazon or OpenStack, without having to connect to their cloud account. Before you start the configuration, ensure that you have:

	* a running AMP server (version AMP-5.3 or Brooklyn 1.0.0-M1), see `Cloudsoft AMP documentation <https://docs.cloudsoft.io/operations/production-installation.html>`_ for installation
	* a configured user in AMP server that will be used by UForge to connect
	* set the clock correctly on the machine running Cloudsoft AMP or Brooklyn. To set the time on Linux you can use the ntp client (e.g. sudo ntpdate pool.ntp.org). We advise running the ntp daemon so that the clock is kept continually in sync.


Configuring AMP Server with Required Options
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	On the AMP server instance, run the following command as root:

		.. code-block:: shell

			$ grep -q "extraSshPublicKeyData=true" /etc/amp/system.properties || (echo "brooklyn.jclouds.authorizePublicKey.extraSshPublicKeyData=true" >> /etc/amp/system.properties)
			$ systemctl restart amp

        .. note:: On a Brooklyn server, replace ``amp`` by ``brooklyn`` in the two commands.


Configuring AMP Access in UForge
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	1. On each UForge webservice node and the UI node, in ``/etc/UShareSoft/uforge/uforge.conf`` uncomment and complete the following lines:

		* AMP_API_ENDPOINT=<The URL to access AMP server eg: http://amp-instance.com:8081/v1>
		* AMP_API_USER=<The AMP user password that uforge should connect with>
		* AMP_API_PASSWORD=<The AMP user password>

        .. note:: If you want to connect to your AMP server with HTTPS instead of HTTP, you can follow `Cloudosft AMP documentation  <https://docs.cloudsoft.io/operations/configuration/https.html>`_ to configure it. In this case your AMP_API_ENDPOINT should use the secure URL eg: https://amp-instance.com:8443/v1.

	2. Run the following command on the webservice node:

		.. code-block:: shell

			$ service tomcat restart

	3. Run the following command on the UI node:

		.. code-block:: shell

			$ /opt/UShareSoft/uforge-client/bin/uforge_ui_update.sh


Installing UForge Brooklyn Plugin into AMP Catalog
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    1. Run the following command on the UForge UI node:

		.. code-block:: shell

			$ /opt/UShareSoft/uforge/tools/update_scripts/deploy_brooklyn_plugin/deploy_brooklyn_plugin.sh

    2. If the script output contains ``please restart the Brooklyn/AMP server``, then on the AMP server instance, run the following command as root:

		.. code-block:: shell

			$ systemctl restart amp

        .. note:: On a Brooklyn server, replace ``amp`` by ``brooklyn`` in the command.


Configuring UForge Users Access Rights
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	At this point the deployment feature should be available for the root user. In order to allow other users to use this feature, give them the entitlement ``deployments_access``. For more information on entitlements refer to :ref:`create-roles`.

		.. code-block:: shell

			role create --name launcher --entitlement deployments_access
			user role add --roles launcher --account someUser
