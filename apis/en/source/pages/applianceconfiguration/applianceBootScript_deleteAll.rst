.. Copyright FUJITSU LIMITED 2016-2019

.. _applianceBootScript-deleteAll:

applianceBootScript_deleteAll
-----------------------------

.. function:: DELETE /users/{uid}/appliances/{aid}/bootscripts

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 2.1.06``

Removes all of the boot scripts attached to an appliance.  This includes any boot script file that has been uploaded. 

A list of ``query parameters`` can be used to delete a subset of boot scripts.  The list of boot scripts to delete are expressed as a list of query parameters: - ``name``: delete a boot script that matches a name - ``id``: delete a boot script that matches the boot script id - ``type``: delete a boot script that matches a boot script type 

For example, the following query parameters requests to delete boot scripts that have the name ``bootscript1.sh``, ``bootscript2.sh`` and a boot script that has the id ``23``: 

.. code-block:: bash 

{uri}?name="bootscript1.sh"&name="bootscript2.sh"&id="23"

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

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/bootscripts" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`applianceBootScript-create`
	 * :ref:`applianceBootScript-delete`
	 * :ref:`applianceBootScript-download`
	 * :ref:`applianceBootScript-downloadFile`
	 * :ref:`applianceBootScript-get`
	 * :ref:`applianceBootScript-getAll`
	 * :ref:`applianceBootScript-update`
	 * :ref:`applianceBootScript-upload`
	 * :ref:`bootscript-object`
