.. Copyright 2017 FUJITSU LIMITED

.. _scan-create:

scan_create
-----------

.. function:: POST /users/{uid}/scannedinstances/{siid}/scans

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.4``

Creates a new scan to a parent ``scanned instance``.  This is a scan report of a live system.  The scan report is created by the ``uforge-scan`` binary that is added and run on the live system separately. 

This request is similar to :ref:`scan-create` 

.. warning:: This request is used by the ``uforge-scan`` binary, normally you should not use this request via APIs

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``migration_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``siid`` (required): the id of the :ref:`scannedinstance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The file to upload.

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/scannedinstances/{siid}/scans" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@binaryFilePath"

.. seealso::

	 * :ref:`scannedinstance-object`
	 * :ref:`scan-object`
	 * :ref:`machinescaninstance-api-resources`
	 * :ref:`scannedInstanceScan-getAll`
	 * :ref:`scannedInstanceScan-deleteAll`
	 * :ref:`scan-multipartCreate`
	 * :ref:`scan-cancel`
	 * :ref:`scan-delete`
	 * :ref:`scan-get`
	 * :ref:`userScan-getAll`
	 * :ref:`scanFile-getAll`
	 * :ref:`scanFileArchive-download`
	 * :ref:`scanInstallProfile-get`
	 * :ref:`scanOverlay-download`
	 * :ref:`scanOverlay-uploadChunk`
	 * :ref:`scanOverlay-upload`
	 * :ref:`scanPartition-upload`
	 * :ref:`scanPackage-getAll`
	 * :ref:`scanPackageBinary-getAll`
	 * :ref:`scanPackageFile-get`
