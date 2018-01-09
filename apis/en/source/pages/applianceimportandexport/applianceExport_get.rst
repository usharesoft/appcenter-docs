.. Copyright 2017 FUJITSU LIMITED

.. _applianceExport-get:

applianceExport_get
-------------------

.. function:: GET /users/{uid}/appliances/{aid}/exports/{eid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.5``

Gets an appliance export ticket.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``eid`` (required): the id of the export ticket (provided after :ref:`appliance-export`)
* ``aid`` (required): the id of the :ref:`appliance-object` to be exported

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/exports/{eid}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`applianceExport-cancel`
	 * :ref:`applianceExport-delete`
	 * :ref:`applianceExport-download`
	 * :ref:`applianceExport-get`
	 * :ref:`applianceExport-getAll`
	 * :ref:`applianceImport-getAllStatus`
	 * :ref:`appliance-export`
	 * :ref:`applianceexport-object`
