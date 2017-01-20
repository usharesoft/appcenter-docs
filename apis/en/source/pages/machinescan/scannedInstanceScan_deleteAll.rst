.. Copyright 2017 FUJITSU LIMITED

.. _scannedInstanceScan-deleteAll:

scannedInstanceScan_deleteAll
-----------------------------

.. function:: DELETE /users/{uid}/scannedinstances/{siid}/scans

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.4``

Removes all the scans from a parent ``scanned instance``.  All the scan reports and related uploaded overlays are deleted.

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

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/scannedinstances/{siid}/scans" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`scannedinstance-object`
	 * :ref:`scan-object`
	 * :ref:`machinescaninstance-api-resources`
	 * :ref:`machinescaninstance-api-resources`
	 * :ref:`scannedInstanceScan-getAll`
	 * :ref:`scan-multipartCreate`
	 * :ref:`scan-cancel`
	 * :ref:`scan-create`
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
