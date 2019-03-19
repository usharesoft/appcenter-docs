.. Copyright FUJITSU LIMITED 2016-2019

.. _user-create:

user_create
-----------

.. function:: POST /users

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Creates a new user on the platform. 

As part of the creation the user will be assigned to an organization and be setup using a ``subscription profile``. If not ``subscription profile`` is specified, the default ``subscription profile`` will be used.  A creation code os also specified, allowing user creation to be tracked.  Other access rights including being an administrator of the organization can be specified as part of the creation.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

None
HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`user-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:user xmlns:ns0="http://www.usharesoft.com/uforge">
		<loginName>example</loginName>
		<active>true</active>
		<email>example@example.com</email>
		<creationCode>default</creationCode>
		<password>example</password>
	</ns0:user>


.. seealso::

	 * :ref:`user-object`
	 * :ref:`userAdminStatus-change`
	 * :ref:`userOrg-getAll`
	 * :ref:`userOrg-remove`
	 * :ref:`user-get`
	 * :ref:`user-getAll`
	 * :ref:`user-update`
