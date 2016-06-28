.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _categoryChild-create:

categoryChild_create
--------------------

.. function:: POST /orgs/{oid}/categories/{cid}/subcategories

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.0``

Creates a sub-category under an existing category. 

Refer to :ref:`category-object` for all the mandatory and optional attributes. 

..warning:: Only administrators have the ability to create and manage categories

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``categories_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): the id of the :ref:`org-object`
* ``cid`` (required): the id of the parent :ref:`category-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`category-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "/orgs/{oid}/categories/{cid}/subcategories" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:category>
		<name>Category Example</name>
		<type>PROJECT</type>
	</ns0:category>


.. seealso::

	 * :ref:`org-object`
	 * :ref:`category-object`
	 * :ref:`category-create`
	 * :ref:`category-delete`
	 * :ref:`category-deleteAll`
	 * :ref:`category-getAll`
	 * :ref:`category-get`
	 * :ref:`category-update`
