.. Copyright FUJITSU LIMITED 2016-2019

.. _applianceExport-download:

applianceExport_download
------------------------

.. function:: GET /users/{uid}/appliances/{aid}/exports/{eid}/downloads

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``*/*``
	* Since: ``UForge 3.5``

Downloads the archive of an exported appliance.  The archive is a .tar.gz file.  The archive contains the meta-data file of the :ref:`appliance-object` and any 3rd party software or configuration scripts associated with the :ref:`appliance-object`. 

An archive can be used with the `hammr <http://hammr.io>`_ command-line tool. 

.. warning:: you can only download an archive once the creation of the archive is complete.  Use :ref:`applianceExportStatus-get` to check the status of an export prior to a download request.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``eid`` (required): the id of the export ticket (provided after :ref:`appliance-export`)
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/exports/{eid}/downloads" -X GET \
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
