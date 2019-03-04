.. Copyright FUJITSU LIMITED 2016-2019

.. _repository-getAll:

repository_getAll
-----------------

.. function:: GET /orgs/{oid}/repositories

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.5.1``

Retrieves all the repositories for an organization. 

A list of :ref:`repository-object` objects are returned.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/repositories" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`distribprofile-object`
	 * :ref:`repository-object`
	 * :ref:`repositoryOS-getAll`
	 * :ref:`repository-create`
	 * :ref:`repository-delete`
	 * :ref:`repository-getAll`
	 * :ref:`repository-update`
