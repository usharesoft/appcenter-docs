.. Copyright FUJITSU LIMITED 2016-2019

.. _userAdminStatus-change:

userAdminStatus_change
----------------------

.. function:: PUT /users/{uid}/orgs/{oid}

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.3``

Change the administration status of a user in an organization.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``user_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``oid`` (required): the name of the organization

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/orgs/{oid}" -X PUT \
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
