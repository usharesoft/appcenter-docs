.. Copyright 2017 FUJITSU LIMITED

.. _workspaceTemplate-update:

workspaceTemplate_update
------------------------

.. function:: PUT /orgs/{oid}/workspaces/{wid}/templates/{tid}

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.3.2``

Updates the information of an appliance template in a workspace. 

Please refer to :ref:`gallerytemplate-object` for a complete list of all the ``template`` attributes.

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

A :ref:`galleryTemplate-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/workspaces/{wid}/templates/{tid}" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:galleryTemplate xmlns:ns0="http://www.usharesoft.com/uforge">
		<name>Modified name</name>
		<version>1.0</version>
		<description>Example</description>
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
	 * :ref:`workspaceTemplate-share`
	 * :ref:`workspaceTemplate-vote`
	 * :ref:`workspacetemplatecomments-api-resources`
