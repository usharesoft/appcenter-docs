.. Copyright 2017 FUJITSU LIMITED

.. _applianceOSProfilePkg-getAll:

applianceOSProfilePkg_getAll
----------------------------

.. function:: GET /users/{uid}/appliances/{aid}/osprofile/{osid}/pkgs

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Retrieves all the native packages contained in the OS profile.

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

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/osprofile/{osid}/pkgs" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`distribprofile-object`
	 * :ref:`packages-object`
	 * :ref:`applianceOSProfile-create`
	 * :ref:`applianceOSProfile-get`
	 * :ref:`applianceOSProfile-delete`
	 * :ref:`applianceOSProfilePkg-updateAll`
	 * :ref:`applianceOSUpdates-get`
	 * :ref:`applianceOSUpdates-save`
