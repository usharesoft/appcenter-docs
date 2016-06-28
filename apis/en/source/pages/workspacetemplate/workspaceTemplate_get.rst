.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _workspaceTemplate-get:

workspaceTemplate_get
---------------------

.. function:: GET /orgs/{oid}/workspaces/{wid}/templates/{tid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.3.2``

Retrieves the information of an appliance template in a workspace.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``wid`` (required): the id of the :ref:`workspace-object`
* ``oid`` (required): the id of the :ref:`org-object`
* ``tid`` (required): the id of the :ref:`gallerytemplate-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "http://www.example.com/api/orgs/{oid}/workspaces/{wid}/templates/{tid}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`workspace-api-resources`
	 * :ref:`workspacetemplatecomments-api-resources`
	 * :ref:`workspace-object`
	 * :ref:`gallerytemplate-object`
	 * :ref:`appliance-object`
	 * :ref:`workspaceTemplate-getAll`
	 * :ref:`workspaceTemplate-delete`
	 * :ref:`workspaceTemplate-share`
	 * :ref:`workspaceTemplate-update`
	 * :ref:`workspaceTemplate-vote`
	 * :ref:`workspaceTemplateStatus-get`
	 * :ref:`workspaceTemplateLogo-download`
	 * :ref:`workspaceTemplateLogo-delete`
	 * :ref:`workspaceTemplateLogo-upload`
	 * :ref:`workspaceTemplateOSPkgs-get`
	 * :ref:`workspaceTemplateInstallProfile-get`
	 * :ref:`workspaceTemplateProjects-get`
	 * :ref:`workspaceTemplateStudio-get`
	 * :ref:`workspaceTemplateShare-cancel`
	 * :ref:`workspaceTemplateStats-get`
