.. Copyright FUJITSU LIMITED 2016-2019

.. _scanFileArchive-download:

scanFileArchive_download
------------------------

.. function:: GET /users/{uid}/scannedinstances/{siid}/scans/{sid}/files

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``*/*``
	* Since: ``UForge 3.4``

Downloads an archive containing all the files found on file system after scanning a live system. 

This includes binaries, configuration files, log files and any other files found. 

The ``compareWith`` query parameter can be used to compare all the files of another scan report, only the differences will be added to the archive.

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
	 * :ref:`scanFile-getAll`
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
