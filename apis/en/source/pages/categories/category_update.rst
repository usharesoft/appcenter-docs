.. Copyright 2016 FUJITSU LIMITED

.. _category-update:

category_update
---------------

.. function:: PUT /orgs/{oid}/categories/{cid}

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.0``

Update an existing category. 

</p> 

Refer to :ref:`category-object` for all the mandatory and optional attributes. 

..warning:: Only administrators have the ability to create and manage categories

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``categories_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): the id of the :ref:`org-object`
* ``cid`` (required): the id of the :ref:`category-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`category-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "/orgs/{oid}/categories/{cid}" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:category>
		<name>New name</name>
		<type>PROJECT</type>
	</ns0:category>


.. seealso::

	 * :ref:`org-object`
	 * :ref:`category-object`
	 * :ref:`category-create`
	 * :ref:`categoryChild-create`
	 * :ref:`category-delete`
	 * :ref:`category-deleteAll`
	 * :ref:`category-getAll`
	 * :ref:`category-get`
