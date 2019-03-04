.. Copyright FUJITSU LIMITED 2016-2019

.. _targetFormatLogo-delete:

targetFormatLogo_delete
-----------------------

.. function:: DELETE /orgs/{oid}/targetformats/{tfid}/logo/{logoId}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Remove an uploaded logo from a target format.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_formats_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): the id of the :ref:`org-object`
* ``tfid`` (required): the id of the :ref:`targetformat-object`
* ``logoId`` (required): the id of the target format :ref:`logo-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/targetformats/{tfid}/logo/{logoId}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`imageformat-object`
	 * :ref:`primitiveFormat-getAll`
	 * :ref:`primitiveFormat-update`
	 * :ref:`targetFormatLogo-download`
	 * :ref:`targetFormatLogo-downloadFile`
	 * :ref:`targetFormatLogo-upload`
	 * :ref:`targetFormat-create`
	 * :ref:`targetFormat-delete`
	 * :ref:`targetFormat-get`
	 * :ref:`targetFormat-getAll`
	 * :ref:`targetFormat-getAllTargetPlatforms`
	 * :ref:`targetFormat-update`
	 * :ref:`targetFormat-updateAccess`
	 * :ref:`targetformat-object`
	 * :ref:`targetplatform-api-resources`
	 * :ref:`targetplatform-object`
