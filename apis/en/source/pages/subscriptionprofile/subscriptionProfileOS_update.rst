.. Copyright 2016 FUJITSU LIMITED

.. _subscriptionProfileOS-update:

subscriptionProfileOS_update
----------------------------

.. function:: PUT /orgs/{oid}/subscriptions/{spid}/distros

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.5``

Updates the operating system access rights list in a subscription profile. 

Any operating system listed in the subscription profile that is not specified in the new operating system list will be removed from the subscription profile. 

.. warning:: The operating systems provided must be part of the organization's operating system list and must be visible and active in the organization.

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

A :ref:`distributions-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "/orgs/{oid}/subscriptions/{spid}/distros" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:distributions>
		<distributions>
			<distribution>
				<uri>distributions/1</uri>
			</distribution>
		</distributions>
	</ns0:distributions>


.. seealso::

	 * :ref:`subscriptionprofile-object`
	 * :ref:`subscriptionProfile-create`
	 * :ref:`subscriptionProfile-getAll`
	 * :ref:`subscriptionProfile-get`
	 * :ref:`subscriptionProfile-update`
	 * :ref:`subscriptionProfile-remove`
	 * :ref:`subscriptionProfileAdmins-update`
	 * :ref:`subscriptionProfileRoles-update`
	 * :ref:`subscriptionProfileQuotas-update`
	 * :ref:`subscriptionProfileTargetFormat-update`
	 * :ref:`subscriptionProfileTargetPlatform-update`
