.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _subscriptionProfile-getAll:

subscriptionProfile_getAll
--------------------------

.. function:: GET /orgs/{oid}/subscriptions

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.5``

Retrieve all the subscription profiles for an organization. 

A list of :ref:`subscriptionprofile-object` objects are returned. 

.. warning:: This only returns the subscription profiles the requesting user is an administrator of.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "http://www.example.com/api/orgs/{oid}/subscriptions" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`subscriptionprofile-object`
	 * :ref:`subscriptionProfile-create`
	 * :ref:`subscriptionProfile-get`
	 * :ref:`subscriptionProfile-update`
	 * :ref:`subscriptionProfile-remove`
	 * :ref:`subscriptionProfileOS-update`
	 * :ref:`subscriptionProfileAdmins-update`
	 * :ref:`subscriptionProfileRoles-update`
	 * :ref:`subscriptionProfileQuotas-update`
	 * :ref:`subscriptionProfileTargetFormat-update`
	 * :ref:`subscriptionProfileTargetPlatform-update`
