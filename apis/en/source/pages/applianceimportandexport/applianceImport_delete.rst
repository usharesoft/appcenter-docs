.. Copyright FUJITSU LIMITED 2016-2019

.. _applianceImport-delete:

applianceImport_delete
----------------------

.. function:: DELETE /users/{uid}/imports/{iid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``3.6``

Deletes the specified appliance import.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``iid`` (required): the id of the :ref:`applianceimport-object` ticket to delete

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/imports/{iid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`applianceImportStatus-get`
	 * :ref:`applianceImport-get`
	 * :ref:`applianceImport-getAll`
	 * :ref:`applianceImport-getAllStatus`
	 * :ref:`applianceImport-upload`
	 * :ref:`appliance-import`
	 * :ref:`applianceimport-object`
