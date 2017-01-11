.. Copyright 2016 FUJITSU LIMITED

.. _mySoftwareLicense-upload:

mySoftwareLicense_upload
------------------------

.. function:: POST /users/{uid}/mysoftware/{msid}/licenses/{lid}

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Uploads a license file for a software component. This request is similar to :ref:`mySoftwareLicense-uploadFile`

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``software_upload``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object`
* ``msid`` (required): the id of the :ref:`mySoftware-object`
* ``lid`` (required): the id of the :ref:`license-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The file to upload.

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/mysoftware/{msid}/licenses/{lid}" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@binaryFilePath"

.. seealso::

	 * :ref:`mysoftware-object`
	 * :ref:`mySoftware-create`
	 * :ref:`mySoftware-getAll`
	 * :ref:`mySoftware-get`
	 * :ref:`mySoftware-update`
	 * :ref:`mySoftware-delete`
	 * :ref:`mySoftware-clone`
	 * :ref:`mySoftwareUsage-getAll`
	 * :ref:`mySoftwareOs-getAll`
	 * :ref:`mySoftwareArtifact-add`
	 * :ref:`mySoftwareArtifact-getAll`
	 * :ref:`mySoftwareArtifact-get`
	 * :ref:`mySoftwareArtifact-updateAll`
	 * :ref:`mySoftwareArtifact-update`
	 * :ref:`mySoftwareArtifact-deleteAll`
	 * :ref:`mySoftwareArtifact-delete`
	 * :ref:`mySoftwareArtifact-download`
	 * :ref:`mySoftwareArtifact-downloadFile`
	 * :ref:`mySoftwareArtifact-createFromRemoteServer`
	 * :ref:`mySoftwareArtifact-addOrRemoveFileFromCache`
	 * :ref:`mySoftwareArtifact-upload`
	 * :ref:`mySoftwareArtifact-addChild`
	 * :ref:`mySoftwareLicense-uploadFile`
	 * :ref:`mySoftwareLicense-download`
	 * :ref:`mySoftwareLicense-delete`
	 * :ref:`mySoftwareLogo-download`
	 * :ref:`mySoftwareLogo-downloadFile`
	 * :ref:`mySoftwareLogo-upload`
	 * :ref:`mySoftwareLogo-delete`
	 * :ref:`mySoftware-export`
	 * :ref:`mySoftwareExport-delete`
	 * :ref:`mySoftwareExport-download`
	 * :ref:`mySoftwareExportStatus-get`
	 * :ref:`softwareBundleImport-get`
	 * :ref:`softwarebundle-import`
	 * :ref:`softwarebundleImport-upload`
	 * :ref:`softwarebundleImportStatus-get`
