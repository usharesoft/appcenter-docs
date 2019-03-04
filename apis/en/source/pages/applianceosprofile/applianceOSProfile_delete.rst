.. Copyright FUJITSU LIMITED 2016-2019

.. _applianceOSProfile-delete:

applianceOSProfile_delete
-------------------------

.. function:: DELETE /users/{uid}/appliances/{aid}/osprofile/{osid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 1.0``

Removes an OS profile from an appliance.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object` that has created the appliance
* ``osid`` (required): the id of the :ref:`distribprofile-object`
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/osprofile/{osid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`applianceOSProfilePkg-getAll`
	 * :ref:`applianceOSProfilePkg-updateAll`
	 * :ref:`applianceOSProfile-create`
	 * :ref:`applianceOSProfile-get`
	 * :ref:`applianceOSUpdates-get`
	 * :ref:`applianceOSUpdates-save`
	 * :ref:`distribprofile-object`
