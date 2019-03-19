.. Copyright FUJITSU LIMITED 2016-2019

.. _userOrg-getAll:

userOrg_getAll
--------------

.. function:: GET /users/{uid}/orgs

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 2.1``

Retrieves the list of organization an user is a member or administrator of. 

A list of :ref:`org-object` objects are returned. 

You can use the query parameter ``name`` to filter the organization list returned.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/orgs" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`org-object`
	 * :ref:`organization-api-resources`
	 * :ref:`user-object`
	 * :ref:`userAdminStatus-change`
	 * :ref:`userOrg-getAll`
	 * :ref:`userOrg-remove`
	 * :ref:`user-create`
	 * :ref:`user-get`
	 * :ref:`user-getAll`
	 * :ref:`user-update`
