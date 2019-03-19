.. Copyright FUJITSU LIMITED 2016-2019

.. _scanInstance-deleteAll:

scanInstance_deleteAll
----------------------

.. function:: DELETE /users/{uid}/scannedinstances

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.4``

Removes all the scanned instances for a user. 

.. warning:: this deletes all the child scan reports and overlay files.

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

	curl "https://uforge.example.com/api/users/{uid}/scannedinstances" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`machinescan-api-resources`
	 * :ref:`scan-object`
	 * :ref:`scanInstance-create`
	 * :ref:`scanInstance-delete`
	 * :ref:`scanInstance-get`
	 * :ref:`scanInstance-getAll`
	 * :ref:`scannedInstanceScan-getAll`
	 * :ref:`scannedinstance-object`
