.. Copyright FUJITSU LIMITED 2016-2019

.. _scanImportToGoldenStatus-get:

scanImportToGoldenStatus_get
----------------------------

.. function:: GET /users/{uid}/scannedinstances/{siid}/scans/{sid}/goldens//status

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.7.fp5``

Retrieves all the scan import to golden ticket status of a scan report that has been transformed or in the process of being transformed to a ``golden-image``. 

You can use the query parameter ``i`` to retrieve a subset of the status tickets.

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

	curl "https://uforge.example.com/api/users/{uid}/scannedinstances/{siid}/scans/{sid}/goldens//status" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`machinescan-api-resources`
	 * :ref:`machinescaninstance-api-resources`
	 * :ref:`scan-object`
	 * :ref:`scanImportToGolden-delete`
	 * :ref:`scanImportToGolden-getAll`
	 * :ref:`scanImportToGolden-import`
	 * :ref:`scanimport-object`
	 * :ref:`scannedinstance-object`
