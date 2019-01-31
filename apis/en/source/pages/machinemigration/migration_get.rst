.. Copyright FUJITSU LIMITED 2016-2019

.. _migration-get:

migration_get
-------------

.. function:: GET /users/{uid}/migrations/{mid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.8.2``

Gets a migration. 

A ``migration`` is an object representing all stages to migrate a live running instance (physical machine, VM, container).

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``migration_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``mid`` (required): the id of the :ref:`migration-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/migrations/{mid}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`migration-object`
	 * :ref:`stage-object`
