.. Copyright FUJITSU LIMITED 2016-2019

.. _role-update:

role_update
-----------

.. function:: PUT /orgs/{oid}/roles

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.2``

Updates the information of a role. 

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

	curl "https://uforge.example.com/api/orgs/{oid}/roles" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:role xmlns:ns0="http://www.usharesoft.com/uforge">
		<name>Example Role Updated</name>
	</ns0:role>


.. seealso::

	 * :ref:`entitlement-object`
	 * :ref:`entitlement-getAll`
	 * :ref:`role-object`
	 * :ref:`role-create`
	 * :ref:`role-delete`
	 * :ref:`role-getAll`
