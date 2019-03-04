.. Copyright FUJITSU LIMITED 2016-2019

.. _projectArtifact-upload:

projectArtifact_upload
----------------------

.. function:: POST /orgs/{oid}/projects/{pid}/artifacts/{said}/bin/{fileName}

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Uploads a binary file to a software artifact.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_projects_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``fileName`` (required): the file name of the binary to upload
* ``pid`` (required): the id of the :ref:`project-object`
* ``oid`` (required): the id of the :ref:`org-object`
* ``said`` (required): the id of the :ref:`softwareartifact-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The file to upload.

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/projects/{pid}/artifacts/{said}/bin/{fileName}" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@binaryFilePath"

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
	 * :ref:`projectArtifact-updateAll`
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
