.. Copyright FUJITSU LIMITED 2016-2019

.. _workspaceTemplateStats-get:

workspaceTemplateStats_get
--------------------------

.. function:: GET /orgs/{oid}/workspaces/{wid}/templates/{tid}/stats

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.3.2``

Retrieves the statistics for a shared appliance template in a workspace. 

A list of :ref:`gallerytemplatestatistics-object` objects are returned.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``wid`` (required): the workspace id the template belongs to
* ``oid`` (required): the Organization id
* ``tid`` (required): the template id

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/workspaces/{wid}/templates/{tid}/stats" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`gallerytemplate-object`
	 * :ref:`gallerytemplatestatistics-object`
	 * :ref:`workspace-api-resources`
	 * :ref:`workspace-object`
	 * :ref:`workspaceTemplateInstallProfile-get`
	 * :ref:`workspaceTemplateLogo-delete`
	 * :ref:`workspaceTemplateLogo-download`
	 * :ref:`workspaceTemplateLogo-upload`
	 * :ref:`workspaceTemplateOSPkgs-get`
	 * :ref:`workspaceTemplateProjects-get`
	 * :ref:`workspaceTemplateShare-cancel`
	 * :ref:`workspaceTemplateStatus-get`
	 * :ref:`workspaceTemplateStudio-get`
	 * :ref:`workspaceTemplate-delete`
	 * :ref:`workspaceTemplate-get`
	 * :ref:`workspaceTemplate-getAll`
	 * :ref:`workspaceTemplate-share`
	 * :ref:`workspaceTemplate-update`
	 * :ref:`workspacetemplatecomments-api-resources`
