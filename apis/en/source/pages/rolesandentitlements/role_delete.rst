.. Copyright FUJITSU LIMITED 2016-2019

.. _role-delete:

role_delete
-----------

.. function:: DELETE /orgs/{oid}/roles/{rolename}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.2``

Removes a role from the organization. 

.. note:: if this role is currently assigned to a user, then the role is also removed automatically from the user.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``rolename`` (required): the name of the role to be removed
* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/roles/{rolename}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`entitlement-object`
	 * :ref:`entitlement-getAll`
	 * :ref:`role-object`
	 * :ref:`role-create`
	 * :ref:`role-getAll`
	 * :ref:`role-update`
