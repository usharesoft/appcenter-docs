.. Copyright FUJITSU LIMITED 2016-2019

.. _applianceExport-cancel:

applianceExport_cancel
----------------------

.. function:: DELETE /users/{uid}/appliances/{aid}/exports/{eid}/status

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.5``

Cancels a current export job of an appliance.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``eid`` (required): the id of the export ticket (provided after :ref:`appliance-export`)
* ``aid`` (required): the id of the :ref:`appliance-object` being exported

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/exports/{eid}/status" -X DELETE \
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
