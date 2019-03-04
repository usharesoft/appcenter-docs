.. Copyright FUJITSU LIMITED 2016-2019

.. _migration-getAll:

migration_getAll
----------------

.. function:: GET /users/{uid}/migrations

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.8.2``

Gets all the migrations created by a particular user. 

A list of :ref:`migration-object` objects are returned. 

You can use a ``search criteria`` to retrieve a subset of these migrations.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``migration_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/migrations" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`migration-object`
	 * :ref:`migration-cancel`
	 * :ref:`migration-create`
	 * :ref:`migration-get`
	 * :ref:`stage-object`
	 * :ref:`user-object`
