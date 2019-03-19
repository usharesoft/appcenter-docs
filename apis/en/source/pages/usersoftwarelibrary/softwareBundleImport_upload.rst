.. Copyright FUJITSU LIMITED 2016-2019

.. _softwareBundleImport-upload:

softwareBundleImport_upload
---------------------------

.. function:: POST /users/{uid}/bundleimports/{sbid}/uploads

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Upload the software bundle archive. 

In order to upload an archive, a ``software bundle import ticket`` must first be created by using :ref:`softwareBundle-import`. 

Once the upload is complete, the platform extracts the archive and creates a software bundle from the archive contents.  This is an asynchronous job.  To get the status of this import, use :ref:`softwareBundleImportStatus-get`

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``sbid`` (required): the id of the :ref:`softwarebundleimport-object` ticket

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The file to upload.

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/bundleimports/{sbid}/uploads" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@binaryFilePath"

.. seealso::

	 * :ref:`mySoftware-object`
	 * :ref:`mySoftwareArtifact-add`
	 * :ref:`mySoftwareArtifact-addChild`
	 * :ref:`mySoftwareArtifact-addOrRemoveFileFromCache`
	 * :ref:`mySoftwareArtifact-createFromRemoteServer`
	 * :ref:`mySoftwareArtifact-delete`
	 * :ref:`mySoftwareArtifact-deleteAll`
	 * :ref:`mySoftwareArtifact-download`
	 * :ref:`mySoftwareArtifact-downloadFile`
	 * :ref:`mySoftwareArtifact-get`
	 * :ref:`mySoftwareArtifact-getAll`
	 * :ref:`mySoftwareArtifact-update`
	 * :ref:`mySoftwareArtifact-updateAll`
	 * :ref:`mySoftwareArtifact-upload`
	 * :ref:`mySoftwareExportStatus-get`
	 * :ref:`mySoftwareExport-delete`
	 * :ref:`mySoftwareExport-download`
	 * :ref:`mySoftwareLicense-delete`
	 * :ref:`mySoftwareLicense-download`
	 * :ref:`mySoftwareLicense-upload`
	 * :ref:`mySoftwareLicense-uploadFile`
	 * :ref:`mySoftwareLogo-delete`
	 * :ref:`mySoftwareLogo-download`
	 * :ref:`mySoftwareLogo-downloadFile`
	 * :ref:`mySoftwareLogo-upload`
	 * :ref:`mySoftwareRestrictionOS-evaluate`
	 * :ref:`mySoftwareRestrictionOS-getAll`
	 * :ref:`mySoftwareRestriction-update`
	 * :ref:`mySoftwareUsage-getAll`
	 * :ref:`mySoftware-availableForImage`
	 * :ref:`mySoftware-clone`
	 * :ref:`mySoftware-create`
	 * :ref:`mySoftware-delete`
	 * :ref:`mySoftware-export`
	 * :ref:`mySoftware-get`
	 * :ref:`mySoftware-getAll`
	 * :ref:`mySoftware-update`
	 * :ref:`softwareBundleImportStatus-get`
	 * :ref:`softwareBundleImport-get`
	 * :ref:`softwareBundle-import`
	 * :ref:`softwarebundle-object`
	 * :ref:`softwarebundleexport-object`
	 * :ref:`softwarebundleimport-object`
