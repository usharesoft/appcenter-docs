.. Copyright FUJITSU LIMITED 2016-2019

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
* ``osid`` (required): the id of the :ref:`linuxprofile-object`
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
	 * :ref:`applianceOSProfileApplications-getAll`
	 * :ref:`applianceOSProfilePkg-updateAll`
	 * :ref:`applianceOSProfileServices-getAll`
	 * :ref:`applianceOSProfile-create`
	 * :ref:`applianceOSProfile-delete`
	 * :ref:`applianceOSProfile-get`
	 * :ref:`applianceOSUpdates-get`
	 * :ref:`applianceOSUpdates-save`
	 * :ref:`distribprofile-object`
	 * :ref:`linuxprofile-object`
	 * :ref:`packages-object`
