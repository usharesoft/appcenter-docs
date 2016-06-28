.. Copyright 2016 FUJITSU LIMITED

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

* ``uid`` (required): the id of the :ref:`user-object`
* ``eid`` (required): the id of the export ticket (provided after :ref:`appliance-export`)
* ``aid`` (required): the id of the :ref:`appliance-object` being exported

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "/users/{uid}/appliances/{aid}/exports/{eid}/status" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`applianceexport-object`
	 * :ref:`appliance-object`
	 * :ref:`appliance-export`
	 * :ref:`applianceExport-delete`
	 * :ref:`applianceExport-download`
	 * :ref:`applianceExportStatus-get`
