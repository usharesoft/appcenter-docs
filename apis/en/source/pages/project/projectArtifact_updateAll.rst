.. Copyright FUJITSU LIMITED 2016-2019

.. _projectArtifact-updateAll:

projectArtifact_updateAll
-------------------------

.. function:: PUT /orgs/{oid}/projects/{pid}/artifacts

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Updates the information of a set of artifact contained in a project.  This only updates the meta-data for the artifact.  Please use :ref:`projectArtifact-upload` to upload the file(s). 

Please refer to :ref:`softwareartifact-object` (:ref:`softwarefile-object`, :ref:`bootscript-object` or :ref:`ospackage-object`) for a complete list of all the ``software artifact`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_projects_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``pid`` (required): the id of the :ref:`project-object`
* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`softwareArtifacts-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/projects/{pid}/artifacts" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:softwareArtifacts xmlns:ns0="http://www.usharesoft.com/uforge">
		<softwareArtifacts>
			<softwareFile>
				<dbId>603</dbId>
				<size>10</size>
				<name>artifact-update</name>
				<fullName>artifact-update</fullName>
				<origName>artifact-update</origName>
			</softwareFile>
		</softwareArtifacts>
	</ns0:softwareArtifacts>


.. seealso::

	 * :ref:`project-object`
	 * :ref:`projectArtifact-addChild`
	 * :ref:`projectArtifact-addOrRemoveFileFromCache`
	 * :ref:`projectArtifact-create`
	 * :ref:`projectArtifact-createFromRemoteServer`
	 * :ref:`projectArtifact-delete`
	 * :ref:`projectArtifact-deleteAll`
	 * :ref:`projectArtifact-download`
	 * :ref:`projectArtifact-downloadFile`
	 * :ref:`projectArtifact-get`
	 * :ref:`projectArtifact-getAll`
	 * :ref:`projectArtifact-update`
	 * :ref:`projectArtifact-upload`
	 * :ref:`projectLogo-delete`
	 * :ref:`projectLogo-download`
	 * :ref:`projectLogo-downloadFile`
	 * :ref:`projectLogo-upload`
	 * :ref:`projectRestrictionOS-evaluate`
	 * :ref:`projectRestriction-update`
	 * :ref:`project-availableForImage`
	 * :ref:`project-create`
	 * :ref:`project-delete`
	 * :ref:`project-get`
	 * :ref:`project-getAll`
	 * :ref:`project-update`
	 * :ref:`softwareartifact-object`
