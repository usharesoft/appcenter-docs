.. Copyright FUJITSU LIMITED 2016-2019

.. _appliance-export:

appliance_export
----------------

.. function:: POST /users/{uid}/appliances/{aid}/exports

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.5``

Request to export the specified appliance as an archive.  This creates an ``export ticket`` that contains an archive that can be downloaded.  The archive contains the meta-data file of the :ref:`appliance-object` and any 3rd party software or configuration scripts associated with the :ref:`appliance-object`. 

An archive can be used with the `hammr <http://hammr.io>`_ command-line tool. 

The response body is an export appliance ticket.  To poll the status of this export, use :ref:`applianceExportStatus-get`.  Once complete, the archive can be downloaded using :ref:`applianceExport-download`. 

.. note:: No request body is required in this HTTP POST.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/exports" -X POST \
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
