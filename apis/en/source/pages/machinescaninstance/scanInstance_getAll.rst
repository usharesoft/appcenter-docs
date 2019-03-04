.. Copyright FUJITSU LIMITED 2016-2019

.. _scanInstance-getAll:

scanInstance_getAll
-------------------

.. function:: GET /users/{uid}/scannedinstances

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.4``

Retrieves all the scanned instances. 

 A ``scanned instance`` is an object representing a live running instance (physical machine, VM, container). Each time the system is scanned, the scan report is stored under the ``scanned instance`` object. 

A list of :ref:`scannedinstance-object` objects are returned. 

You can use a set of ``query parameters`` to retrieve a subset of these scanned instances.  This includes: - ``name``: retrieves the scanned instance with a specific name - ``ids``: retrieves a list of scanned instances that matches the id list provided - ``index``: - ``max``: - ``orderBy``: a field name contained in :ref:`scannedinstance-object` to order by - ``asc``: boolean to determine to sort the list in ``ascending`` order (if ``false``, sort in ``descending`` order)

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``migration_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/scannedinstances" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`machinescan-api-resources`
	 * :ref:`scan-object`
	 * :ref:`scanInstance-create`
	 * :ref:`scanInstance-delete`
	 * :ref:`scanInstance-deleteAll`
	 * :ref:`scanInstance-get`
	 * :ref:`scannedInstanceScan-getAll`
	 * :ref:`scannedinstance-object`
