.. Copyright FUJITSU LIMITED 2016-2019

.. _scanImportToGolden-delete:

scanImportToGolden_delete
-------------------------

.. function:: DELETE /users/{uid}/scannedinstances/{siid}/scans/{sid}/goldens/{sitgid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.7.fp5``

Removes a scan import to golden ticket.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``migration_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``siid`` (required): the id of the :ref:`scannedinstance-object`
* ``sid`` (required): the id of the :ref:`scan-object`
* ``sitgid`` (required): the id of the :ref:`scanimport-object` to remove

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/scannedinstances/{siid}/scans/{sid}/goldens/{sitgid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`machinescan-api-resources`
	 * :ref:`machinescaninstance-api-resources`
	 * :ref:`scan-object`
	 * :ref:`scanImportToGoldenStatus-get`
	 * :ref:`scanImportToGolden-getAll`
	 * :ref:`scanImportToGolden-import`
	 * :ref:`scanimport-object`
	 * :ref:`scannedinstance-object`
