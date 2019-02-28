.. Copyright FUJITSU LIMITED 2016-2019

.. _scanImportToGolden-cancel:

scanImportToGolden_cancel
-------------------------

.. function:: DELETE /users/{uid}/scannedinstances/{siid}/scans/{sid}/goldens/{iid}/status

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.8.fp2``

Cancels the process to import a scan report as a new ``golden-image``.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``migration_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``siid`` (required): the id of the :ref:`scannedinstance-object`
* ``iid`` (required): the id of the :ref:`scanimport-object`
* ``sid`` (required): the id of the :ref:`scan-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/scannedinstances/{siid}/scans/{sid}/goldens/{iid}/status" -X DELETE \
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
