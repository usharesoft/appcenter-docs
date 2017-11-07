.. Copyright 2017 FUJITSU LIMITED

.. _modify-external-endpoints:

Modifying the UForge Platform External URL Endpoints
----------------------------------------------------

There are three external URL endpoints for the UForge platform, namely:

	* URL endpoint to access the UForge Portal (user interface)
	* URL endpoint to access directly the REST web service for command-line tools and REST API calls
	* URL endpoint for cloud platforms to download machine images from UForge.  This URL endpoint is not used by end users, but only by cloud platforms that request to download machine images, rather than UForge uploading those machine images

.. image:: /images/external-endpoints.png

These URL endpoints are automatically created based on the external hostname provided during the initial configuration of the UForge platform (see :ref:`configure-uforge`).  These URL endpoints can be changed by updating certain variables in the ``/etc/UShareSoft/uforge/uforge.conf`` file.

The UForge Portal URL endpoint is constructed using the following variables:

	https://<UFORGE_PROXY_INFOS>/<UFORGE_UI_ROOT_CONTEXT>

The URL endpoint for direct REST web service access is constructed using the following variables:

	https://<UFORGE_PROXY_INFOS>/<UFORGE_API_ROOT_CONTEXT>

The download URL endpoint is constructed using the ``UFORGE_IAAS_DOWNLOAD_URL`` variable.

If you want to use ``http`` rather than ``https`` (even though this is not recommended) then you must set the following variable in the ``uforge.conf`` file::

	UFORGE_PROXY_USE_SSL = false

For example, if you set the following variables in ``uforge.conf``::

	UFORGE_PROXY_INFOS = hq.example.com:5666
	UFORGE_UI_ROOT_CONTEXT = /ui
	UFORGE_API_ROOT_CONTEXT = /apis
	UFORGE_IAAS_DOWNLOAD_URL = http://hq.example.com:5777/downloads
	UFORGE_PROXY_USE_SSL = true

The external URLs will appear as follows::

	* UForge Portal: https://hq.example.com:5666/ui
	* REST URL endpoint: https://hq.example.com:5666/apis
	* Machine Image downloads (for external cloud platforms): http://hq.example.com:5777/downloads

To update the external URLs:

	1. Update the ``/etc/UShareSoft/uforge/uforge.conf`` file for each node with the updated variables you wish.

	2. Launch the following two scripts (if multi-node the following order should be respected: compute notes, db nodes, web service nodes)::

		$ /opt/UShareSoft/uforge/tools/update_scripts/uforge_update.sh
		$ /opt/UShareSoft/uforge-client/bin/uforge_ui_update.sh
