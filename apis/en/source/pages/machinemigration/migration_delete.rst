.. Copyright FUJITSU LIMITED 2016-2019

.. _migration-delete:

migration_delete
----------------

.. function:: DELETE /users/{uid}/migrations/{mid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.8.2``

Delete a finished migration.

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

	curl "https://uforge.example.com/api/users/{uid}/migrations/{mid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`migration-object`
	 * :ref:`migration-cancel`
	 * :ref:`migration-deleteAll`
	 * :ref:`stage-object`
