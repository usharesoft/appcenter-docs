.. Copyright 2016 FUJITSU LIMITED

.. _subscriptionProfile-remove:

subscriptionProfile_remove
--------------------------

.. function:: DELETE /orgs/{oid}/subscriptions/{spid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.5``

Remove a subscription profile from an organization.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_administrate``

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

	curl "https://uforge.example.com/api/orgs/{oid}/subscriptions/{spid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`subscriptionprofile-object`
	 * :ref:`subscriptionProfile-create`
	 * :ref:`subscriptionProfile-getAll`
	 * :ref:`subscriptionProfile-get`
	 * :ref:`subscriptionProfile-update`
	 * :ref:`subscriptionProfileOS-update`
	 * :ref:`subscriptionProfileAdmins-update`
	 * :ref:`subscriptionProfileRoles-update`
	 * :ref:`subscriptionProfileQuotas-update`
	 * :ref:`subscriptionProfileTargetFormat-update`
	 * :ref:`subscriptionProfileTargetPlatform-update`
