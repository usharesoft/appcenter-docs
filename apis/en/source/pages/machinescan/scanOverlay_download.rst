.. Copyright FUJITSU LIMITED 2016-2019

.. _scanOverlay-download:

scanOverlay_download
--------------------

.. function:: GET /users/{uid}/scannedinstances/{siid}/scans/{sid}/overlay

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``*/*``
	* Since: ``UForge 3.4``

Downloads the overlay archive.  The overlay archive includes all the packages and files not already known by the UForge platform.  This overlay is created on the live system during the scan process.

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

	curl "https://uforge.example.com/api/users/{uid}/scannedinstances/{siid}/scans/{sid}/overlay" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`machinescaninstance-api-resources`
	 * :ref:`scan-object`
	 * :ref:`scanFileArchive-download`
	 * :ref:`scanFile-getAll`
	 * :ref:`scanInstallProfile-get`
	 * :ref:`scanOverlay-upload`
	 * :ref:`scanOverlay-uploadChunk`
	 * :ref:`scanPackageBinary-getAll`
	 * :ref:`scanPackageFile-get`
	 * :ref:`scanPackage-getAll`
	 * :ref:`scanPartition-upload`
	 * :ref:`scan-cancel`
	 * :ref:`scan-create`
	 * :ref:`scan-delete`
	 * :ref:`scan-get`
	 * :ref:`scan-multipartCreate`
	 * :ref:`scannedInstanceScan-deleteAll`
	 * :ref:`scannedInstanceScan-getAll`
	 * :ref:`scannedinstance-object`
	 * :ref:`userScan-getAll`
