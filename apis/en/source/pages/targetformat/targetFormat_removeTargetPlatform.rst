.. Copyright 2017 FUJITSU LIMITED

.. _targetFormat-removeTargetPlatform:

targetFormat_removeTargetPlatform
---------------------------------

.. function:: DELETE /orgs/{oid}/targetformats/{tfid}/targetplatforms/{tpid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Removes the provided target format from a target platform. This is equivalent to :ref:`targetPlatform-removeFormat`.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_formats_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``tpid`` (required): the id `targetplatform-object` object
* ``oid`` (required): the id of the :ref:`org-object`
* ``tfid`` (required): the id of the :ref:`targetformat-object` to remove

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/targetformats/{tfid}/targetplatforms/{tpid}" -X DELETE \
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
