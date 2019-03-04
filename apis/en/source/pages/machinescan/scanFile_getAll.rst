.. Copyright FUJITSU LIMITED 2016-2019

.. _scanFile-getAll:

scanFile_getAll
---------------

.. function:: GET /users/{uid}/scannedinstances/{siid}/scans/{sid}/files

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json`` ``text/plain``
	* Since: ``UForge 3.4``

Retrieves all the files found on file system after scanning a live system. 

A list of :ref:`scannedfile-object` objects are returned. 

A set of query parameters can be used to retrieve a subset of these files.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``migration_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``siid`` (required): the id of the :ref:`scannedinstance-object`
* ``sid`` (required): the id of the :ref:`scan-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/scannedinstances/{siid}/scans/{sid}/files" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`machinescaninstance-api-resources`
	 * :ref:`scan-object`
	 * :ref:`scanFileArchive-download`
	 * :ref:`scanInstallProfile-get`
	 * :ref:`scanOverlay-download`
	 * :ref:`scanOverlay-upload`
	 * :ref:`scanOverlay-uploadChunk`
	 * :ref:`scanPackageBinary-getAll`
	 * :ref:`scanPackage-getAll`
	 * :ref:`scanPartition-upload`
	 * :ref:`scan-create`
	 * :ref:`scan-delete`
	 * :ref:`scan-get`
	 * :ref:`scan-multipartCreate`
	 * :ref:`scannedInstanceScan-deleteAll`
	 * :ref:`scannedInstanceScan-getAll`
	 * :ref:`scannedfiles-object`
	 * :ref:`scannedinstance-object`
	 * :ref:`scannedpackage-object`
