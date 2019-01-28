.. Copyright FUJITSU LIMITED 2016-2019

.. _subscriptionProfile-get:

subscriptionProfile_get
-----------------------

.. function:: GET /orgs/{oid}/subscriptions/{spid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.5``

Retrieve the information of a subscription profile.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): the id of the :ref:`org-object`
* ``spid`` (required): the id of the :ref:`subscriptionprofile-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/subscriptions/{spid}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`subscriptionProfileAdmins-update`
	 * :ref:`subscriptionProfileOS-update`
	 * :ref:`subscriptionProfileQuotas-update`
	 * :ref:`subscriptionProfileRoles-update`
	 * :ref:`subscriptionProfileTargetFormat-update`
	 * :ref:`subscriptionProfileTargetPlatform-update`
	 * :ref:`subscriptionProfile-create`
	 * :ref:`subscriptionProfile-getAll`
	 * :ref:`subscriptionProfile-remove`
	 * :ref:`subscriptionProfile-update`
	 * :ref:`subscriptionprofile-object`
