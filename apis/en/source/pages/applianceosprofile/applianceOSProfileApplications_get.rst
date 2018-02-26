.. Copyright 2017 FUJITSU LIMITED

.. _applianceOSProfileApplications-get:

applianceOSProfileApplications_get
----------------------------------

.. function:: GET /users/{uid}/appliances/{aid}/osprofile/{osid}/applications/{appid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.7.fp3``

Retrieves an application contained in the OS profile.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object` that has created the appliance
* ``appid`` (required): the id of the :ref:`abstractwinapplication-object`
* ``osid`` (required): the id of the :ref:`windowsprofile-object`
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/osprofile/{osid}/applications/{appid}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`abstractwinapplication-object`
	 * :ref:`appliance-object`
	 * :ref:`applianceOSProfilePkg-getAll`
	 * :ref:`applianceOSProfileServices-getAll`
	 * :ref:`applianceOSProfile-create`
	 * :ref:`applianceOSProfile-delete`
	 * :ref:`applianceOSProfile-get`
	 * :ref:`applianceOSUpdates-save`
	 * :ref:`distribprofile-object`
	 * :ref:`winApplications-get`
	 * :ref:`winApplications-getAll`
	 * :ref:`winServices-get`
	 * :ref:`winServices-getAll`
	 * :ref:`windowsprofile-object`
	 * :ref:`winservice-object`
