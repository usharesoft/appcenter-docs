.. Copyright 2017 FUJITSU LIMITED

.. _scan-update:

scan_update
-----------

.. function:: PUT /users/{uid}/scannedinstances/{siid}/scans/{sid}

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.4``

Updates a scan object.

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

A :ref:`scan-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/scannedinstances/{siid}/scans/{sid}" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml



.. seealso::

	 * :ref:`scannedinstance-object`
	 * :ref:`scan-object`
	 * :ref:`machinescaninstance-api-resources`
	 * :ref:`scannedInstanceScan-getAll`
	 * :ref:`scannedInstanceScan-deleteAll`
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
