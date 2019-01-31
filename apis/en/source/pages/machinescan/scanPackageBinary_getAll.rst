.. Copyright FUJITSU LIMITED 2016-2019

.. _scanPackageBinary-getAll:

scanPackageBinary_getAll
------------------------

.. function:: GET /users/{uid}/scannedinstances/{siid}/scans/{sid}/packages/{pid}/bin

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``*/*``
	* Since: ``UForge 3.4``

Downloads a package binary. 

The package can be downloaded without authentication if an ``downloadToken`` is added as a ``query parameter``.  To retrieve the downloadToken, use :ref:`scanPackage-getAll`. 

.. note:: The ``downloadToken`` can only be used once, afterwards it expires, and a new ``downloadToken`` must be retrieved.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``migration_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``siid`` (required): the id of the :ref:`scannedinstance-object`
* ``pid`` (required): the id of the :ref:`scannedpackage-object` to be downloaded
* ``sid`` (required): the id of the :ref:`scan-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/scannedinstances/{siid}/scans/{sid}/packages/{pid}/bin" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`machinescaninstance-api-resources`
	 * :ref:`scan-object`
	 * :ref:`scanFileArchive-download`
	 * :ref:`scanFile-getAll`
	 * :ref:`scanInstallProfile-get`
	 * :ref:`scanOverlay-download`
	 * :ref:`scanOverlay-upload`
	 * :ref:`scanOverlay-uploadChunk`
	 * :ref:`scanPackageFile-get`
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
