.. Copyright FUJITSU LIMITED 2016-2019

.. _applianceImport-get:

applianceImport_get
-------------------

.. function:: GET /users/{uid}/imports/{iid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``3.4``

Gets an appliance import ticket. <p/> 

This object is created automatically when a request to import an ``appliance archive`` is sent to the platform. See :ref:`appliance-import` for more information.

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

	curl "https://uforge.example.com/api/users/{uid}/imports/{iid}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`applianceImportStatus-get`
	 * :ref:`applianceImport-delete`
	 * :ref:`applianceImport-getAll`
	 * :ref:`applianceImport-getAllStatus`
	 * :ref:`applianceImport-upload`
	 * :ref:`appliance-import`
	 * :ref:`applianceimport-object`
