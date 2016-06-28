.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _appliance-getAll:

appliance_getAll
----------------

.. function:: GET /users/{uid}/appliances

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Gets all the appliances created by a particular user. 

A list of :ref:`appliance-object` objects are returned. 

You can use a ``search criteria`` to retrieve a subset of these appliances.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "http://www.example.com/api/users/{uid}/appliances" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`user-object`
	 * :ref:`appliance-create`
	 * :ref:`appliance-clone`
	 * :ref:`appliance-delete`
	 * :ref:`appliance-get`
	 * :ref:`appliance-update`
	 * :ref:`applianceLogo-delete`
	 * :ref:`applianceLogo-download`
	 * :ref:`applianceLogo-downloadFile`
	 * :ref:`applianceLogo-upload`
	 * :ref:`applianceMySoftware-getAll`
	 * :ref:`applianceProject-getAll`
