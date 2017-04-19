.. Copyright 2017 FUJITSU LIMITED

.. _applianceExport-getAllStatus:

applianceExport_getAllStatus
----------------------------

.. function:: GET /users/{uid}/exports/statuses

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``3.6``

Retrieves the status of all the current appliance exports for the user <p/> 

A list of :ref:`status-object` objects are returned. <p/> 

The ``ae`` query parameter can be used to retrieve a subset of these export statuses.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/exports/statuses" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`applianceexport-object`
	 * :ref:`appliance-object`
	 * :ref:`appliance-export`
	 * :ref:`applianceExport-cancel`
	 * :ref:`applianceExport-delete`
	 * :ref:`applianceExport-download`
	 * :ref:`applianceExport-get`
	 * :ref:`applianceExport-getAll`
	 * :ref:`applianceImport-getAllStatus`
