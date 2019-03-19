.. Copyright FUJITSU LIMITED 2016-2019

.. _userRoles-update:

userRoles_update
----------------

.. function:: PUT /users/{uid}/roles

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.4``

Updates the roles for an user. Any new role in the list will be added to the user.  Any role already provided to the user, but no longer in the new list will be removed. 

Please refer to :ref:`role-object` for a complete list of all the ``role`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``user_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`roles-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/roles" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:roles xmlns:ns0="http://www.usharesoft.com/uforge">
		<roles>
			<role>
				<name>role1</name>
			</role>
		</roles>
	</ns0:roles>


.. seealso::

	 * :ref:`role-object`
	 * :ref:`rolesandentitlements-api-resources`
	 * :ref:`userRoles-getAll`
