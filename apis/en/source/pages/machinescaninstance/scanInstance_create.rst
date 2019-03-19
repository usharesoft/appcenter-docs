.. Copyright FUJITSU LIMITED 2016-2019

.. _scanInstance-create:

scanInstance_create
-------------------

.. function:: POST /users/{uid}/scannedinstances

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.4``

Creates a scanned instance. 

A ``scanned instance`` is an object representing a live running instance (physical machine, VM, container). Each time the system is scanned, the scan report is stored under the ``scanned instance`` object. 

Please refer to :ref:`scannedinstance-object` for a complete list of all the ``scanned instance`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``migration_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`scannedInstance-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/scannedinstances" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:scannedInstance xmlns:ns0="http://www.usharesoft.com/uforge">
		<name>Example Scan</name>
		<distribution>
			<name>CentOS</name>
			<version>6.7</version>
			<arch>x86_64</arch>
		</distribution>
	</ns0:scannedInstance>


.. seealso::

	 * :ref:`machinescan-api-resources`
	 * :ref:`scan-object`
	 * :ref:`scanInstance-delete`
	 * :ref:`scanInstance-deleteAll`
	 * :ref:`scanInstance-get`
	 * :ref:`scanInstance-getAll`
	 * :ref:`scannedInstanceScan-getAll`
	 * :ref:`scannedinstance-object`
