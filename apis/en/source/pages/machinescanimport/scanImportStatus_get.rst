.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _scanImportStatus-get:

scanImportStatus_get
--------------------

.. function:: GET /users/{uid}/scannedinstances/{siid}/scans/{sid}/imports/status/

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.4``

Retrieves all the scan import ticket statuses of a scan report that has been transformed or in the process of being transformed to an ``appliance``. 

You can use the query parameter ``i`` to retrieve a subset of the status tickets.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``migration_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object`
* ``siid`` (required): the id of the :ref:`scannedinstance-object`
* ``sid`` (required): the id of the :ref:`scan-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "/users/{uid}/scannedinstances/{siid}/scans/{sid}/imports/status/" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`scannedinstance-object`
	 * :ref:`scan-object`
	 * :ref:`scanimport-object`
	 * :ref:`appliance-object`
	 * :ref:`machinescaninstance-api-resources`
	 * :ref:`machinescan-api-resources`
	 * :ref:`scanImport-getAll`
	 * :ref:`scanImport-delete`
	 * :ref:`scanImport-cancel`
	 * :ref:`scan-import`
