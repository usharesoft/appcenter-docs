.. Copyright 2017 FUJITSU LIMITED

.. _entitlement-getAll:

entitlement_getAll
------------------

.. function:: GET /entitlements

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.2``

Retrieves all the available entitlements available on the platform. 

A list of :ref:`entitlement-object` objects are returned.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_administrate``

URI Parameters
~~~~~~~~~~~~~~

None
HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/entitlements" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`role-object`
	 * :ref:`entitlement-object`
	 * :ref:`role-create`
	 * :ref:`role-getAll`
	 * :ref:`role-update`
	 * :ref:`role-delete`
