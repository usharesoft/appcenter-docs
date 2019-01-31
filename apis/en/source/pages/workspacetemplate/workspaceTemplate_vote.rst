.. Copyright FUJITSU LIMITED 2016-2019

.. _workspaceTemplate-vote:

workspaceTemplate_vote
----------------------

.. function:: POST /orgs/{oid}/workspaces/{wid}/templates/{tid}/vote

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.3.2``

Post a rating for a shared appliance template.  The valid rating numbers is between 1 and 5. 

If the user has already voted then their current vote value will be updated.

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

A :ref:`voteStat-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/workspaces/{wid}/templates/{tid}/vote" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:voteStat xmlns:ns0="http://www.usharesoft.com/uforge">
		<rating>3</rating>
	</ns0:voteStat>


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
	 * :ref:`workspaceTemplate-update`
	 * :ref:`workspacetemplatecomments-api-resources`
