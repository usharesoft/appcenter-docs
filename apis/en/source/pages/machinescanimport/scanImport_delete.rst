.. Copyright 2016 FUJITSU LIMITED

.. _scanImport-delete:

scanImport_delete
-----------------

.. function:: DELETE /users/{uid}/scannedinstances/{siid}/scans/{sid}/imports/{iid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.4``

Removes a scan import ticket.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``migration_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``siid`` (required): the id of the :ref:`scannedinstance-object`
* ``iid`` (required): the id of the :ref:`scanimport-object` to remove
* ``sid`` (required): the id of the :ref:`scan-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/scannedinstances/{siid}/scans/{sid}/imports/{iid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`machinescan-api-resources`
	 * :ref:`machinescaninstance-api-resources`
	 * :ref:`scan-object`
	 * :ref:`scanImportStatus-get`
	 * :ref:`scanImport-cancel`
	 * :ref:`scanImport-getAll`
	 * :ref:`scan-import`
	 * :ref:`scanimport-object`
	 * :ref:`scannedinstance-object`
