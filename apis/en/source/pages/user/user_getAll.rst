.. Copyright FUJITSU LIMITED 2016-2019

.. _user-getAll:

user_getAll
-----------

.. function:: GET /users

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Retrieves all the users in the platform. A list of :ref:`user-object` objects are returned. 

You can use a ``search criteria`` or a set of query parameters to retrieve a subset of the users.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``user_administrate``

URI Parameters
~~~~~~~~~~~~~~

None
HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`user-object`
	 * :ref:`userAdminStatus-change`
	 * :ref:`userOrg-getAll`
	 * :ref:`userOrg-remove`
	 * :ref:`user-create`
	 * :ref:`user-get`
	 * :ref:`user-update`
