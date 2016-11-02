.. Copyright 2016 FUJITSU LIMITED

.. _mySoftwareExport-delete:

mySoftwareExport_delete
-----------------------

.. function:: DELETE /users/{uid}/mysoftware/{msid}/exports/{eid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.6``

Deletes the export ticket and associated archive of an exported software bundle export metadata (archive). 

.. note:: This does not delete the source software bundle.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``software_upload``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``eid`` (required): the id of the export ticket (provided after :ref:`softwarebundleexport-object`)
* ``msid`` (required): the id of the :ref:`mySoftware-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/mysoftware/{msid}/exports/{eid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`mySoftware-object`
	 * :ref:`softwarebundleexport-object`
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
	 * :ref:`mySoftwareLicense-upload`
	 * :ref:`mySoftwareLicense-uploadFile`
	 * :ref:`mySoftwareLicense-download`
	 * :ref:`mySoftwareLicense-delete`
	 * :ref:`mySoftwareLogo-download`
	 * :ref:`mySoftwareLogo-downloadFile`
	 * :ref:`mySoftwareLogo-upload`
	 * :ref:`mySoftwareLogo-delete`
	 * :ref:`mySoftware-export`
	 * :ref:`mySoftwareExport-download`
	 * :ref:`mySoftwareExportStatus-get`
	 * :ref:`softwareBundleImport-get`
	 * :ref:`softwarebundle-import`
	 * :ref:`softwarebundleImport-upload`
	 * :ref:`softwarebundleImportStatus-get`
