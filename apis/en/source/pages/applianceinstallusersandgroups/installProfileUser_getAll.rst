.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _installProfileUser-getAll:

installProfileUser_getAll
-------------------------

.. function:: GET /users/{uid}/appliances/{aid}/installProfile/{ipid}/users

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.4``

Retrieves all the OS users registered in an install profile.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object` that has created the appliance
* ``ipid`` (required): the id of the :ref:`installprofile-object`
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "http://www.example.com/api/users/{uid}/appliances/{aid}/installProfile/{ipid}/users" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`installprofile-object`
	 * :ref:`osuser-object`
	 * :ref:`osgroup-object`
	 * :ref:`installProfileGroup-create`
	 * :ref:`installProfileGroup-delete`
	 * :ref:`installProfileGroup-deleteAll`
	 * :ref:`installProfileGroup-get`
	 * :ref:`installProfileGroup-getAll`
	 * :ref:`installProfileGroup-update`
	 * :ref:`installProfileUser-create`
	 * :ref:`installProfileUser-delete`
	 * :ref:`installProfileUser-deleteAll`
	 * :ref:`installProfileUser-get`
	 * :ref:`installProfileUser-update`
	 * :ref:`applianceinstallprofile-api-resources`
