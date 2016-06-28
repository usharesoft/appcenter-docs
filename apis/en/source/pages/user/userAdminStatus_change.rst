.. Copyright 2016 FUJITSU LIMITED

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

* ``uid`` (required): the id of the :ref:`user-object` to remove
* ``oid`` (required): the name of the organization to remove the user from

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`org-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "/users/{uid}/orgs/{oid}" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml



.. seealso::

	 * :ref:`organization-api-resources`
	 * :ref:`user-object`
	 * :ref:`org-object`
	 * :ref:`user-create`
	 * :ref:`user-get`
	 * :ref:`user-getAll`
	 * :ref:`user-update`
	 * :ref:`userOrg-getAll`
	 * :ref:`userOrg-remove`
	 * :ref:`userAdminStatus-change`
