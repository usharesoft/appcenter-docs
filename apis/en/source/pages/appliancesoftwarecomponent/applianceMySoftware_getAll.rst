.. Copyright FUJITSU LIMITED 2016-2019

.. _applianceMySoftware-getAll:

applianceMySoftware_getAll
--------------------------

.. function:: GET /users/{uid}/appliances/{aid}/mysoftware

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Retrieves all the 3rd party software components that have been added to the appliance from the user's ``Software Library``. 

This returns a list of :ref:`mySoftware-object` objects.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/mysoftware" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`applianceProject-getAll`
	 * :ref:`appliance-clone`
	 * :ref:`appliance-create`
	 * :ref:`appliance-delete`
	 * :ref:`appliance-get`
	 * :ref:`appliance-getAll`
	 * :ref:`appliance-update`
	 * :ref:`mySoftware-object`
	 * :ref:`user-object`
