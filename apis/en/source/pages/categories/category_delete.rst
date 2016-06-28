.. Copyright 2016 FUJITSU LIMITED

.. _category-delete:

category_delete
---------------

.. function:: DELETE /orgs/{oid}/categories/{cid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.0``

Deletes a category from an organization. 

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

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "/orgs/{oid}/categories/{cid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`org-object`
	 * :ref:`category-object`
	 * :ref:`category-create`
	 * :ref:`categoryChild-create`
	 * :ref:`category-deleteAll`
	 * :ref:`category-getAll`
	 * :ref:`category-get`
	 * :ref:`category-update`
