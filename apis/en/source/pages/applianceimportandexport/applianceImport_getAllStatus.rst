.. Copyright FUJITSU LIMITED 2016-2019

.. _applianceImport-getAllStatus:

applianceImport_getAllStatus
----------------------------

.. function:: GET /users/{uid}/imports/statuses

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``3.6``

Gets the status of all the current appliance imports for the user. 

A list of :ref:`status-object` objects are returned. 

The ``ai`` query parameter can be used to retrieve a subset of these import statuses.

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

	curl "https://uforge.example.com/api/users/{uid}/imports/statuses" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`applianceImportStatus-get`
	 * :ref:`applianceImport-delete`
	 * :ref:`applianceImport-get`
	 * :ref:`applianceImport-getAll`
	 * :ref:`applianceImport-upload`
	 * :ref:`appliance-import`
	 * :ref:`applianceimport-object`
