.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _role-create:

role_create
-----------

.. function:: POST /orgs/{oid}/roles

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.2``

Create a new role in an organization.  A ``role`` contains one or more ``entitlements`` which determine the access rights to various features. 

Please refer to :ref:`role-object` for a complete list of all the ``role`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`role-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "http://www.example.com/api/orgs/{oid}/roles" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:role>
		<name>Example Role</name>
	</ns0:role>


.. seealso::

	 * :ref:`role-object`
	 * :ref:`entitlement-object`
	 * :ref:`entitlement-getAll`
	 * :ref:`role-getAll`
	 * :ref:`role-update`
	 * :ref:`role-delete`
