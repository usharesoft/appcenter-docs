.. Copyright FUJITSU LIMITED 2016-2019

.. _scanImportToTemplate-getAll:

scanImportToTemplate_getAll
---------------------------

.. function:: GET /users/{uid}/scannedinstances/{siid}/scans/{sid}/imports

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.4``

Retrieves all the scan import tickets of a scan report that has been transformed to an ``appliance``. 

By importing a scan report a new ``appliance`` object is created to your ``Appliance Library``.

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

	curl "https://uforge.example.com/api/users/{uid}/scannedinstances/{siid}/scans/{sid}/imports" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`machinescan-api-resources`
	 * :ref:`machinescaninstance-api-resources`
	 * :ref:`scan-object`
	 * :ref:`scanImportToTemplateStatus-get`
	 * :ref:`scanImportToTemplate-cancel`
	 * :ref:`scanImportToTemplate-delete`
	 * :ref:`scanImportToTemplate-import`
	 * :ref:`scanimport-object`
	 * :ref:`scannedinstance-object`
