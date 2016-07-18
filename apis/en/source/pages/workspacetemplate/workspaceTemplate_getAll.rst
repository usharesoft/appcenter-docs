.. Copyright 2016 FUJITSU LIMITED

.. _workspaceTemplate-getAll:

workspaceTemplate_getAll
------------------------

.. function:: GET /orgs/{oid}/workspaces/{wid}/templates

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.3.2``

Retrieves all the appliance templates shared in a workspace. 

A list of :ref:`gallerytemplate-object` objects are returned. 

You can use a ``search criteria`` to retrieve a subset of these shared appliance templates.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``wid`` (required): the id of the :ref:`workspace-object`
* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/workspaces/{wid}/templates" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`workspace-api-resources`
	 * :ref:`workspacetemplatecomments-api-resources`
	 * :ref:`workspace-object`
	 * :ref:`gallerytemplate-object`
	 * :ref:`appliance-object`
	 * :ref:`workspaceTemplate-get`
	 * :ref:`workspaceTemplate-delete`
	 * :ref:`workspaceTemplate-share`
	 * :ref:`workspaceTemplate-update`
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
