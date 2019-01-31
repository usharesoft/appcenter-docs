.. Copyright FUJITSU LIMITED 2016-2019

.. _projectArtifact-addOrRemoveFileFromCache:

projectArtifact_addOrRemoveFileFromCache
----------------------------------------

.. function:: PUT /orgs/{oid}/projects/{pid}/artifacts/{said}/fetch

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: 
	* Since: ``UForge 3.6``

Add or remove a file of an artifact from the cache.  Note, if this file is a directory all sub-directories and files will be added or deleted.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``software_upload``

URI Parameters
~~~~~~~~~~~~~~

* ``pid`` (required): the id of the :ref:`project-object`
* ``oid`` (required): the id of the :ref:`org-object`
* ``said`` (required): the id of the :ref:`softwareartifact-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The file to upload.

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/projects/{pid}/artifacts/{said}/fetch" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@binaryFilePath"

.. seealso::

	 * :ref:`project-object`
	 * :ref:`projectArtifact-addChild`
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
