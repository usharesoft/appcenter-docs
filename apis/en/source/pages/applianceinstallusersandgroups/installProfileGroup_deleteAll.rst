.. Copyright FUJITSU LIMITED 2016-2019

.. _installProfileGroup-deleteAll:

installProfileGroup_deleteAll
-----------------------------

.. function:: DELETE /users/{uid}/appliances/{aid}/installProfile/{ipid}/groups

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.4``

Removes all the OS groups from an install profile.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object` that has created the appliance
* ``ipid`` (required): the id of the :ref:`installprofile-object`
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/installProfile/{ipid}/groups" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`installProfileGroup-create`
	 * :ref:`installProfileGroup-delete`
	 * :ref:`installProfileGroup-get`
	 * :ref:`installProfileGroup-getAll`
	 * :ref:`installProfileGroup-update`
	 * :ref:`installProfileUser-create`
	 * :ref:`installProfileUser-deleteAll`
	 * :ref:`installProfileUser-get`
	 * :ref:`installProfileUser-getAll`
	 * :ref:`installProfileUser-update`
