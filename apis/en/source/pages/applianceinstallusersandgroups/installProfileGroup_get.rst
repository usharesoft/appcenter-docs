.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _installProfileGroup-get:

installProfileGroup_get
-----------------------

.. function:: GET /users/{uid}/appliances/{aid}/installProfile/{ipid}/groups/{osgid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.4``

Retrieves the meta-data information of an OS group registered in an install profile.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object` that has created the appliance
* ``ipid`` (required): the id of the :ref:`installprofile-object`
* ``osgid`` (required): the id of the :ref:`osgroup-object` to delete
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "/users/{uid}/appliances/{aid}/installProfile/{ipid}/groups/{osgid}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`installProfileGroup-create`
	 * :ref:`installProfileGroup-delete`
	 * :ref:`installProfileGroup-deleteAll`
	 * :ref:`installProfileGroup-getAll`
	 * :ref:`installProfileGroup-update`
	 * :ref:`installProfileUser-create`
	 * :ref:`installProfileUser-deleteAll`
	 * :ref:`installProfileUser-get`
	 * :ref:`installProfileUser-getAll`
	 * :ref:`installProfileUser-update`
