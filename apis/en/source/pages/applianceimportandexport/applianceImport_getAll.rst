.. Copyright FUJITSU LIMITED 2016-2019

.. _applianceImport-getAll:

applianceImport_getAll
----------------------

.. function:: GET /users/{uid}/imports

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``3.6``

Gets all the appliance imports requested by a particular user. <p/> 

A list of :ref:`applianceimport-object` objects are returned. <p/> 

You can use a ``search criteria`` to retrieve a subset of these appliance import objects.

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

	curl "https://uforge.example.com/api/users/{uid}/imports" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`applianceImportStatus-get`
	 * :ref:`applianceImport-delete`
	 * :ref:`applianceImport-get`
	 * :ref:`applianceImport-getAllStatus`
	 * :ref:`applianceImport-upload`
	 * :ref:`appliance-import`
	 * :ref:`applianceimport-object`
