.. Copyright FUJITSU LIMITED 2016-2019

.. _installProfile-getDeprecated:

installProfile_getDeprecated
----------------------------

.. function:: GET /users/{uid}/appliances/{aid}/installProfile

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Retrieves the installation profile for an appliance.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object` that has created the appliance
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/installProfile" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`applianceinstallusersandgroups-api-resources`
	 * :ref:`appliancepartitiontabledisk-api-resources`
	 * :ref:`installProfile-update`
	 * :ref:`installprofile-object`
	 * :ref:`osgroup-object`
	 * :ref:`osuser-object`
