.. Copyright 2017 FUJITSU LIMITED

.. _targetFormat-getAllTargetPlatforms:

targetFormat_getAllTargetPlatforms
----------------------------------

.. function:: GET /orgs/{oid}/targetformats/{tfid}/targetplatforms

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Retrieves all the target platforms where this target format is used. 

A list of :ref:`targetplatform-object` objects are returned.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_formats_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): the id of the :ref:`org-object`
* ``tfid`` (required): the id of the :ref:`targetformat-object` to add

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/targetformats/{tfid}/targetplatforms" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`targetplatform-api-resources`
	 * :ref:`targetplatform-object`
	 * :ref:`targetformat-object`
	 * :ref:`imageformat-object`
	 * :ref:`primitiveFormat-getAll`
	 * :ref:`primitiveFormat-update`
	 * :ref:`targetFormat-create`
	 * :ref:`targetFormat-getAll`
	 * :ref:`targetFormat-get`
	 * :ref:`targetFormat-delete`
	 * :ref:`targetFormat-update`
	 * :ref:`targetFormat-updateAccess`
	 * :ref:`targetFormatLogo-upload`
	 * :ref:`targetFormatLogo-delete`
	 * :ref:`targetFormatLogo-download`
	 * :ref:`targetFormatLogo-downloadFile`
