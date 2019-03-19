.. Copyright FUJITSU LIMITED 2016-2019

.. _category-get:

category_get
------------

.. function:: GET /orgs/{oid}/categories/{cid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.0``

Retrieves a category from an organization. 

.. note:: This also provides any child categories (sub-categories) this category may have.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``false``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): the id of the :ref:`org-object`
* ``cid`` (required): the id of the :ref:`category-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/categories/{cid}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`category-object`
	 * :ref:`categoryChild-create`
	 * :ref:`category-create`
	 * :ref:`category-delete`
	 * :ref:`category-deleteAll`
	 * :ref:`category-getAll`
	 * :ref:`category-update`
	 * :ref:`org-object`
