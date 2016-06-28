.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _subscriptionProfileAdmins-update:

subscriptionProfileAdmins_update
--------------------------------

.. function:: PUT /orgs/{oid}/subscriptions/{spid}/admins

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.5``

Updates the administrators list for a subscription profile. 

Any user listed in the subscription profile that is not specified in the new user list will be removed from the subscription profile.

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

A :ref:`users-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "/orgs/{oid}/subscriptions/{spid}/admins" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:users>
		<users>
			<user>
				<loginName>guest</loginName>
			</user>
		</users>
	</ns0:users>


.. seealso::

	 * :ref:`subscriptionprofile-object`
	 * :ref:`subscriptionProfile-create`
	 * :ref:`subscriptionProfile-getAll`
	 * :ref:`subscriptionProfile-get`
	 * :ref:`subscriptionProfile-update`
	 * :ref:`subscriptionProfile-remove`
	 * :ref:`subscriptionProfileOS-update`
	 * :ref:`subscriptionProfileRoles-update`
	 * :ref:`subscriptionProfileQuotas-update`
	 * :ref:`subscriptionProfileTargetFormat-update`
	 * :ref:`subscriptionProfileTargetPlatform-update`
