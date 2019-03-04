.. Copyright FUJITSU LIMITED 2016-2019

.. _workspaceTemplateLogo-download:

workspaceTemplateLogo_download
------------------------------

.. function:: GET /orgs/{oid}/workspaces/{wid}/templates/{tid}/logo/{lid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``*/*``
	* Since: ``UForge 3.3.2``

Downloads a logo for an appliance template in a workspace.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``wid`` (required): the id of the :ref:`workspace-object`
* ``lid`` (required): the id of the :ref:`logo-object`
* ``oid`` (required): the id of the :ref:`org-object`
* ``tid`` (required): the id of the :ref:`gallerytemplate-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/workspaces/{wid}/templates/{tid}/logo/{lid}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`gallerytemplate-object`
	 * :ref:`workspace-api-resources`
	 * :ref:`workspace-object`
	 * :ref:`workspaceTemplateInstallProfile-get`
	 * :ref:`workspaceTemplateLogo-delete`
	 * :ref:`workspaceTemplateLogo-upload`
	 * :ref:`workspaceTemplateOSPkgs-get`
	 * :ref:`workspaceTemplateProjects-get`
	 * :ref:`workspaceTemplateShare-cancel`
	 * :ref:`workspaceTemplateStats-get`
	 * :ref:`workspaceTemplateStatus-get`
	 * :ref:`workspaceTemplateStudio-get`
	 * :ref:`workspaceTemplate-delete`
	 * :ref:`workspaceTemplate-get`
	 * :ref:`workspaceTemplate-getAll`
	 * :ref:`workspaceTemplate-share`
	 * :ref:`workspaceTemplate-update`
	 * :ref:`workspaceTemplate-vote`
	 * :ref:`workspacetemplatecomments-api-resources`
