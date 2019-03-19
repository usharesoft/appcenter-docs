.. Copyright FUJITSU LIMITED 2016-2019

.. _scanImportToGolden-import:

scanImportToGolden_import
-------------------------

.. function:: POST /users/{uid}/scannedinstances/{siid}/scans/{sid}/goldens

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.7.fp5``

Request to import a scan report to your ``Appliance Library``, creating a new ``golden-image``. 

This response body is an ``scan import ticket`` that provides the meta-data of the golden image to be created from the scan report.  The actual import is done asynchronously.  To poll the status of this import, use :ref:`scanImportToGoldenStatus-get`.

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

	curl "https://uforge.example.com/api/users/{uid}/scannedinstances/{siid}/scans/{sid}/goldens" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:scanImport xmlns:ns0="http://www.usharesoft.com/uforge">
		<importedObjectName>Import Example</importedObjectName>
		<importedObjectVersion>1.0</importedObjectVersion>
		<orgUri>orgs/1</orgUri>
	</ns0:scanImport>


.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`machinescan-api-resources`
	 * :ref:`machinescaninstance-api-resources`
	 * :ref:`scan-object`
	 * :ref:`scanImportToGoldenStatus-get`
	 * :ref:`scanImportToGolden-delete`
	 * :ref:`scanImportToGolden-getAll`
	 * :ref:`scanimport-object`
	 * :ref:`scannedinstance-object`
