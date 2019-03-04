.. Copyright FUJITSU LIMITED 2016-2019

.. _mySoftwareArtifact-getAll:

mySoftwareArtifact_getAll
-------------------------

.. function:: GET /users/{uid}/mysoftware/{msid}/artifacts

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Retrieves all software artifacts and files for a software component. 

This may include os packages, bootscripts and software files (archives, files etc). 

A list of :ref:`softwareartifact-object` (:ref:`softwarefile-object`, :ref:`bootscript-object` or :ref:`ospackage-object`) objects are returned. 

You can filter software artifact files by name when using the query parameter ``filename``.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object`
* ``msid`` (required): the id of the :ref:`mySoftware-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/mysoftware/{msid}/artifacts" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

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
	 * :ref:`softwareBundleImport-get`
	 * :ref:`softwareartifact-object`
	 * :ref:`softwarebundleImportStatus-get`
	 * :ref:`softwarebundleImport-upload`
	 * :ref:`softwarebundle-import`
