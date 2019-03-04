.. Copyright FUJITSU LIMITED 2016-2019

.. _category-getAll:

category_getAll
---------------

.. function:: GET /orgs/{oid}/categories

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.0``

Retrieves all the categories from an organization. 

A search criteria can be used to retrieve a subset of the categories in the organization.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``false``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/categories" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`category-object`
	 * :ref:`categoryChild-create`
	 * :ref:`category-create`
	 * :ref:`category-delete`
	 * :ref:`category-deleteAll`
	 * :ref:`category-get`
	 * :ref:`category-update`
	 * :ref:`org-object`
