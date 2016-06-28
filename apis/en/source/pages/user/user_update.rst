.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _user-update:

user_update
-----------

.. function:: PUT /users/{uid}

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Updates the information of an user.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``user_administrate,user_profile_edit``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`user-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "/users/{uid}" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:user>
		<loginName>guest</loginName>
		<active>true</active>
		<email>example2@example.com</email>
	</ns0:user>


.. seealso::

	 * :ref:`user-object`
	 * :ref:`user-create`
	 * :ref:`user-get`
	 * :ref:`user-getAll`
	 * :ref:`userOrg-getAll`
	 * :ref:`userOrg-remove`
	 * :ref:`userAdminStatus-change`
