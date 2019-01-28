.. Copyright FUJITSU LIMITED 2016-2019

.. _nic-getAll:

nic_getAll
----------

.. function:: GET /users/{uid}/appliances/{aid}/installProfile/{ipid}/nics

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.7``

Gets all the network interface cards for an appliance. 

A list of :ref:`nic-object` objects are returned. 

You can use a ``search criteria`` to retrieve a subset of these nics.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``ipid`` (required): the id of the :ref:`installprofile-object`
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/installProfile/{ipid}/nics" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`installprofile-object`
	 * :ref:`nic-object`
	 * :ref:`nic-create`
	 * :ref:`nic-delete`
	 * :ref:`nic-get`
	 * :ref:`nic-update`
	 * :ref:`nic-updateList`
	 * :ref:`user-object`
