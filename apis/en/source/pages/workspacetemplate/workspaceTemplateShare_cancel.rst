.. Copyright 2016 FUJITSU LIMITED

.. _workspaceTemplateShare-cancel:

workspaceTemplateShare_cancel
-----------------------------

.. function:: DELETE /orgs/{oid}/workspaces/{wid}/templates/{tid}/status

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.3.2``

Cancels the current sharing process (import) of an appliance template to a workspace.

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

	curl "/orgs/{oid}/workspaces/{wid}/templates/{tid}/status" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`workspace-api-resources`
	 * :ref:`workspacetemplatecomments-api-resources`
	 * :ref:`workspace-object`
	 * :ref:`gallerytemplate-object`
	 * :ref:`appliance-object`
	 * :ref:`workspaceTemplate-get`
	 * :ref:`workspaceTemplate-getAll`
	 * :ref:`workspaceTemplate-delete`
	 * :ref:`workspaceTemplate-share`
	 * :ref:`workspaceTemplate-vote`
	 * :ref:`workspaceTemplate-update`
	 * :ref:`workspaceTemplateStatus-get`
	 * :ref:`workspaceTemplateLogo-download`
	 * :ref:`workspaceTemplateLogo-delete`
	 * :ref:`workspaceTemplateLogo-upload`
	 * :ref:`workspaceTemplateOSPkgs-get`
	 * :ref:`workspaceTemplateInstallProfile-get`
	 * :ref:`workspaceTemplateProjects-get`
	 * :ref:`workspaceTemplateStudio-get`
	 * :ref:`workspaceTemplateStats-get`
