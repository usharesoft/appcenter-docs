.. Copyright 2017 FUJITSU LIMITED

.. _targetPlatformLogo-upload:

targetPlatformLogo_upload
-------------------------

.. function:: POST /orgs/{oid}/targetplatforms/{tpid}/logo/{logoId}/{fileName}

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Upload a logo for a target platform.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_formats_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``tpid`` (required): the id of the :ref:`targetplatform-object`
* ``fileName`` (required): the file name of the logo to download
* ``oid`` (required): the id of the :ref:`org-object`
* ``logoId`` (required): the id of the target platform :ref:`logo-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The file to upload.

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/targetplatforms/{tpid}/logo/{logoId}/{fileName}" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@binaryFilePath"

.. seealso::

	 * :ref:`targetformat-api-resources`
	 * :ref:`targetplatform-object`
	 * :ref:`targetformat-object`
	 * :ref:`targetPlatform-create`
	 * :ref:`targetPlatform-getAll`
	 * :ref:`targetPlatform-get`
	 * :ref:`targetPlatform-update`
	 * :ref:`targetPlatform-updateAccess`
	 * :ref:`targetPlatform-delete`
	 * :ref:`targetPlatform-getAllFormats`
	 * :ref:`targetPlatform-addFormat`
	 * :ref:`targetPlatform-removeFormat`
	 * :ref:`targetPlatformLogo-upload`
	 * :ref:`targetPlatformLogo-delete`
	 * :ref:`targetPlatformLogo-download`
	 * :ref:`targetPlatformLogo-downloadFile`
