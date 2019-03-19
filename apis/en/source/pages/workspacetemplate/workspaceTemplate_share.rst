.. Copyright FUJITSU LIMITED 2016-2019

.. _workspaceTemplate-share:

workspaceTemplate_share
-----------------------

.. function:: POST /orgs/{oid}/workspaces/{wid}/templates

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.3.2``

Requests to add an appliance from a user's Appliance Library to a workspace. 

This allows users to share their private appliance templates with other users via a workspace. 

The response body is a ``gallery template`` that provides the meta-data of the new appliance template being shared.  The actual process is done asynchronously.  To poll the status, use :ref:`workspaceTemplateStatus-get`. 

Once complete, the appliance template is available for other users. 

To cancel the process use :ref:`workspaceTemplateShare-cancel`

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

A :ref:`galleryTemplate-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/workspaces/{wid}/templates" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:galleryTemplate xmlns:ns0="http://www.usharesoft.com/uforge">
		<description>This is a description example when sharing a template.</description>
		<name>Appliance Example</name>
		<version>1.0</version>
		<allowComments>true</allowComments>
		<applianceUri>users/root/appliances/6</applianceUri>
		<publisher>user</publisher>
	</ns0:galleryTemplate>


.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`gallerytemplate-object`
	 * :ref:`workspace-api-resources`
	 * :ref:`workspace-object`
	 * :ref:`workspaceTemplateInstallProfile-get`
	 * :ref:`workspaceTemplateLogo-delete`
	 * :ref:`workspaceTemplateLogo-download`
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
	 * :ref:`workspaceTemplate-update`
	 * :ref:`workspacetemplatecomments-api-resources`
