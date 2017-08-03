.. Copyright 2017 FUJITSU LIMITED

.. _config-amp:

Configuring Cloudsoft AMP
-------------------------

Once your UForge platform deployment is complete you can configure Cloudsoft AMP in order to allow users to deploy published machine images directly to Amazon or OpenStack, without having to connect to their cloud account. Before you start the configuration, ensure that you have:

	* a running AMP server (from version AMP-4.5.0 / Brooklyn 0.11.0) with groovy script enabled
	* a configured user in AMP server that will be used by UForge to connect


To configure AMP, do the following on each UForge webservice node:

	1. In ``/etc/UShareSoft/uforge/uforge.conf`` uncomment and complete the following lines:

		* AMP_API_ENDPOINT=<The URL to access AMP server eg: http://amp-instance.com:8081/v1>
		* AMP_API_USER=<The AMP user password that uforge should connect with>
		* AMP_API_PASSWORD=<The AMP user password>

	2. Run the following command on all the nodes:

		.. code-block:: shell

			$ /opt/UShareSoft/uforge-client/bin/uforge_ui_update.sh

	3. At this point the deployment feature should be available for the root user. In order to allow other users to use this feature, give them the entitlement "deployments_access". For more information on entitlements refer to :ref:`create-roles`.
http://docs.usharesoft.com/projects/appcenter-admin-guide/en/latest/pages/manage-users/api-access.html#granting-a-user-supervisor-rights

		.. code-block:: shell

			role create --name launcher --entitlement deployments_access
			user role add --roles launcher --account someUser


