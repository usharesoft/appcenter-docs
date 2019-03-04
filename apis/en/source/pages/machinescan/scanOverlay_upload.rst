.. Copyright FUJITSU LIMITED 2016-2019

.. _scanOverlay-upload:

scanOverlay_upload
------------------

.. function:: POST /users/{uid}/scannedinstances/{siid}/scans/{sid}/overlay

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: 
	* Since: ``UForge 3.4``

Uploads the overlay from the live system. The overlay archive includes all the packages and files not already known by the UForge platform.  This overlay is created on the live system during the scan process. 

This request is similar to :ref:`scanOverlay-uploadChunk` 

.. warning:: This request is used by the ``uforge-scan`` binary, normally you should not use this request via APIs

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

The file to upload.

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/scannedinstances/{siid}/scans/{sid}/overlay" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@binaryFilePath"

.. seealso::

	 * :ref:`machinescaninstance-api-resources`
	 * :ref:`scan-object`
	 * :ref:`scanFileArchive-download`
	 * :ref:`scanFile-getAll`
	 * :ref:`scanInstallProfile-get`
	 * :ref:`scanOverlay-download`
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
