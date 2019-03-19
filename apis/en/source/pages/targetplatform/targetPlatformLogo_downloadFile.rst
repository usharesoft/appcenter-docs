.. Copyright FUJITSU LIMITED 2016-2019

.. _targetPlatformLogo-downloadFile:

targetPlatformLogo_downloadFile
-------------------------------

.. function:: GET /orgs/{oid}/targetplatforms/{tpid}/logo/{logoId}/{fileName}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``*/*``
	* Since: ``UForge 3.6``

Download the logo from a target platform. 

This is similar to :ref:`targetPlatformLogo-download`

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``tpid`` (required): the id of the :ref:`targetplatform-object`
* ``fileName`` (required): the file name of the logo to download
* ``oid`` (required): the id of the :ref:`org-object`
* ``logoId`` (required): the id of the target platform :ref:`logo-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/targetplatforms/{tpid}/logo/{logoId}/{fileName}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`targetPlatformLogo-delete`
	 * :ref:`targetPlatformLogo-download`
	 * :ref:`targetPlatformLogo-downloadFile`
	 * :ref:`targetPlatformLogo-upload`
	 * :ref:`targetPlatform-addFormat`
	 * :ref:`targetPlatform-create`
	 * :ref:`targetPlatform-delete`
	 * :ref:`targetPlatform-get`
	 * :ref:`targetPlatform-getAll`
	 * :ref:`targetPlatform-getAllFormats`
	 * :ref:`targetPlatform-removeFormat`
	 * :ref:`targetPlatform-update`
	 * :ref:`targetPlatform-updateAccess`
	 * :ref:`targetformat-api-resources`
	 * :ref:`targetformat-object`
	 * :ref:`targetplatform-object`
