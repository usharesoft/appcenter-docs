.. Copyright FUJITSU LIMITED 2016-2019

.. _role-getAll:

role_getAll
-----------

.. function:: GET /orgs/{oid}/roles

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.2``

Retrieves all the roles for an organization. 

A list of :ref:`role-object` objects are returned.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/roles" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`entitlement-object`
	 * :ref:`entitlement-getAll`
	 * :ref:`role-object`
	 * :ref:`role-create`
	 * :ref:`role-delete`
	 * :ref:`role-update`
