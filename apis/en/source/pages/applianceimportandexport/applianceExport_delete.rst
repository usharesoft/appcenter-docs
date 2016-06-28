.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _applianceExport-delete:

applianceExport_delete
----------------------

.. function:: DELETE /users/{uid}/appliances/{aid}/exports/{eid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.5``

Deletes the export ticket and associated archive of an exported appliance export metadata (archive). 

.. note:: This does not delete the source appliance.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object`
* ``eid`` (required): the id of the export ticket (provided after :ref:`appliance-export`)
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "/users/{uid}/appliances/{aid}/exports/{eid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`applianceexport-object`
	 * :ref:`appliance-object`
	 * :ref:`appliance-export`
	 * :ref:`applianceExport-cancel`
	 * :ref:`applianceExport-download`
	 * :ref:`applianceExportStatus-get`
