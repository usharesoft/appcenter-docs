.. Copyright 2017 FUJITSU LIMITED

.. _scanInstance-get:

scanInstance_get
----------------

.. function:: GET /users/{uid}/scannedinstances/{siid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.4``

Retrieve a scanned instance.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``migration_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``siid`` (required): the id of the :ref:`scannedinstance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/scannedinstances/{siid}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`scannedinstance-object`
	 * :ref:`scan-object`
	 * :ref:`machinescan-api-resources`
	 * :ref:`scannedInstanceScan-getAll`
	 * :ref:`scanInstance-getAll`
	 * :ref:`scanInstance-create`
	 * :ref:`scanInstance-get`
	 * :ref:`scanInstance-deleteAll`
	 * :ref:`scanInstance-delete`
