.. Copyright FUJITSU LIMITED 2016-2019

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

.. warning:: Only administrators have the ability to create and manage categories

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

	curl "https://uforge.example.com/api/orgs/{oid}/categories/{cid}/subcategories" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:category xmlns:ns0="http://www.usharesoft.com/uforge">
		<name>Category Example</name>
		<type>PROJECT</type>
	</ns0:category>


.. seealso::

	 * :ref:`category-object`
	 * :ref:`category-create`
	 * :ref:`category-delete`
	 * :ref:`category-deleteAll`
	 * :ref:`category-get`
	 * :ref:`category-getAll`
	 * :ref:`category-update`
	 * :ref:`org-object`
