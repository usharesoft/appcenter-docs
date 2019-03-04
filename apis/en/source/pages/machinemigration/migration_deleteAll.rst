.. Copyright FUJITSU LIMITED 2016-2019

.. _migration-deleteAll:

migration_deleteAll
-------------------

.. function:: DELETE /users/{uid}/migrations

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.8.3``

Delete all finished migrations created by a particular user.

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

	curl "https://uforge.example.com/api/users/{uid}/migrations" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`migration-object`
	 * :ref:`migration-cancel`
	 * :ref:`migration-create`
	 * :ref:`migration-delete`
	 * :ref:`migration-get`
	 * :ref:`stage-object`
