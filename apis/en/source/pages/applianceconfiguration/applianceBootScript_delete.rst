.. Copyright FUJITSU LIMITED 2016-2019

.. _applianceBootScript-delete:

applianceBootScript_delete
--------------------------

.. function:: DELETE /users/{uid}/appliances/{aid}/bootscripts/{bsid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 2.1.06``

Removes a boot script attached to an appliance.  This includes any boot script file that has been uploaded.

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

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/bootscripts/{bsid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`applianceBootScript-create`
	 * :ref:`applianceBootScript-deleteAll`
	 * :ref:`applianceBootScript-download`
	 * :ref:`applianceBootScript-downloadFile`
	 * :ref:`applianceBootScript-get`
	 * :ref:`applianceBootScript-getAll`
	 * :ref:`applianceBootScript-update`
	 * :ref:`applianceBootScript-upload`
	 * :ref:`bootscript-object`
