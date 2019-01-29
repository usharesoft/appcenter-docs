.. Copyright FUJITSU LIMITED 2016-2019

.. _migration-cancel:

migration_cancel
----------------

.. function:: DELETE /users/{uid}/migrations/{mid}/status

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.8.5``

Cancel a running Migration.

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

	curl "https://uforge.example.com/api/users/{uid}/migrations/{mid}/status" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`migration-object`
	 * :ref:`migrationStatus-get`
	 * :ref:`migration-create`
	 * :ref:`migration-get`
	 * :ref:`status-object`
	 * :ref:`user-object`
