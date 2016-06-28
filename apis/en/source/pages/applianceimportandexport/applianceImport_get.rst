.. Copyright 2016 FUJITSU LIMITED

.. _applianceImport-get:

applianceImport_get
-------------------

.. function:: GET /users/{uid}/imports/{iid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``3.4``

Retrieve an appliance import ticket meta-data. 

This object is created automatically when a request to import an ``appliance archive`` is sent to the platform. See :ref:`appliance-import` for more information.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object`
* ``iid`` (required): the id of the :ref:`applianceimport-object` ticket

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "/users/{uid}/imports/{iid}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`applianceimport-object`
	 * :ref:`appliance-import`
	 * :ref:`applianceImport-upload`
	 * :ref:`applianceImportStatus-get`
