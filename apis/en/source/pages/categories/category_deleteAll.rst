.. Copyright FUJITSU LIMITED 2016-2019

.. _category-deleteAll:

category_deleteAll
------------------

.. function:: DELETE /orgs/{oid}/categories

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.0``

Deletes all of the categories from an organization. 

A subset of categories can be deleted by providing a list of category ``ids`` to delete as a set of ``query parameters`` in the request. 

.. warning:: Only administrators have the ability to create and manage categories

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``categories_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/categories" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`category-object`
	 * :ref:`categoryChild-create`
	 * :ref:`category-create`
	 * :ref:`category-delete`
	 * :ref:`category-get`
	 * :ref:`category-getAll`
	 * :ref:`category-update`
	 * :ref:`org-object`
