.. Copyright 2017 FUJITSU LIMITED

.. _scanSync-get:

scanSync_get
------------

.. function:: GET /users/{uid}/scannedinstances/{siid}/scans/{sid}/sync/{ssid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.7.7``

Returns the meta-data of the scanSync object.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``migration_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``siid`` (required): the id of the :ref:`scannedinstance-object`
* ``ssid`` (required): the id of the :ref:`scansync-object`
* ``sid`` (required): the id of the :ref:`scan-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/scannedinstances/{siid}/scans/{sid}/sync/{ssid}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`machinescaninstance-api-resources`
	 * :ref:`scan-object`
	 * :ref:`scanFileArchive-download`
	 * :ref:`scanInstallProfile-get`
	 * :ref:`scanPackageBinary-getAll`
	 * :ref:`scanPackage-getAll`
	 * :ref:`scanPartition-upload`
	 * :ref:`scanSync-create`
	 * :ref:`scanSync-getFiles`
	 * :ref:`scan-create`
	 * :ref:`scan-delete`
	 * :ref:`scan-get`
	 * :ref:`scannedInstanceScan-deleteAll`
	 * :ref:`scannedInstanceScan-getAll`
	 * :ref:`scannedinstance-object`
	 * :ref:`scansync-object`
