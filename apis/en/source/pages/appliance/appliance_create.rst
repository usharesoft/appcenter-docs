.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _appliance-create:

appliance_create
----------------

.. function:: POST /users/{uid}/appliances

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Creates a new appliance in a user's ``Appliance Library``. 

Please refer to :ref:`appliance-object` for a complete list of all the ``appliance`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`appliance-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "http://www.example.com/api/users/{uid}/appliances" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:appliance>
		<name>Appliance Example</name>
		<orgUri>orgs/1</orgUri>
		<version>1.0</version>
	</ns0:appliance>


.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`user-object`
	 * :ref:`appliance-clone`
	 * :ref:`appliance-delete`
	 * :ref:`appliance-get`
	 * :ref:`appliance-getAll`
	 * :ref:`appliance-update`
	 * :ref:`applianceLogo-delete`
	 * :ref:`applianceLogo-download`
	 * :ref:`applianceLogo-downloadFile`
	 * :ref:`applianceLogo-upload`
	 * :ref:`applianceMySoftware-getAll`
	 * :ref:`applianceProject-getAll`
