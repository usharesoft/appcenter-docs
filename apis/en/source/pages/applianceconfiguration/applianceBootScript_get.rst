.. Copyright FUJITSU LIMITED 2016-2019

.. _applianceBootScript-get:

applianceBootScript_get
-----------------------

.. function:: GET /users/{uid}/appliances/{aid}/bootscripts/{bsid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 2.1.06``

Retrieves a boot script that is attached to an appliance.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``bsid`` (required): the id of the :ref:`bootscript-object`
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/bootscripts/{bsid}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`applianceBootScript-create`
	 * :ref:`applianceBootScript-delete`
	 * :ref:`applianceBootScript-deleteAll`
	 * :ref:`applianceBootScript-download`
	 * :ref:`applianceBootScript-downloadFile`
	 * :ref:`applianceBootScript-getAll`
	 * :ref:`applianceBootScript-update`
	 * :ref:`applianceBootScript-upload`
	 * :ref:`bootscript-object`
