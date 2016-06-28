.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _userScan-deleteAll:

userScan_deleteAll
------------------

.. function:: DELETE /users/{uid}/scans

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.4``

Removes all the scans for the user.  All the scan reports and related uploaded overlays are deleted. 

You can use a set of query parameters to remove a subset of :ref:`scan-object` objects

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``migration_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "http://www.example.com/api/users/{uid}/scans" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`scannedinstance-object`
	 * :ref:`scan-object`
	 * :ref:`machinescaninstance-api-resources`
	 * :ref:`scannedInstanceScan-deleteAll`
	 * :ref:`scannedInstanceScan-getAll`
	 * :ref:`scan-multipartCreate`
	 * :ref:`scan-cancel`
	 * :ref:`scan-create`
	 * :ref:`scan-delete`
	 * :ref:`scan-get`
	 * :ref:`scan-getAll`
	 * :ref:`scanInstallProfile-get`
	 * :ref:`scanOverlay-download`
	 * :ref:`scanOverlay-uploadChunk`
	 * :ref:`scanOverlay-upload`
	 * :ref:`scanPartition-upload`
	 * :ref:`scanPackage-getAll`
	 * :ref:`scanPackageBinary-getAll`
	 * :ref:`scanPackageFile-get`
