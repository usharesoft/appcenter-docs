.. Copyright 2016 FUJITSU LIMITED

.. _scan-import:

scan_import
-----------

.. function:: POST /users/{uid}/scannedinstances/{siid}/scans/{sid}/imports

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.4``

Request to import a scan report to your ``Appliance Library``, creating a new ``appliance``. 

This response body is an ``scan import ticket`` that provides the meta-data of the appliance to be created from the scan report.  The actual import is done asynchronously.  To poll the status of this import, use :ref:`scanImportStatus-get`. 

To cancel an import use :ref:`scanImport-cancel`

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

A :ref:`scanImport-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/scannedinstances/{siid}/scans/{sid}/imports" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:scanImport xmlns:ns0="http://www.usharesoft.com/uforge">
		<applianceName>Import Example</applianceName>
		<applianceVersion>1.0</applianceVersion>
		<orgUri>orgs/1</orgUri>
	</ns0:scanImport>


.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`machinescan-api-resources`
	 * :ref:`machinescaninstance-api-resources`
	 * :ref:`scan-object`
	 * :ref:`scanImportStatus-get`
	 * :ref:`scanImport-cancel`
	 * :ref:`scanImport-delete`
	 * :ref:`scanImport-getAll`
	 * :ref:`scanimport-object`
	 * :ref:`scannedinstance-object`
