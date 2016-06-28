.. Copyright 2016 FUJITSU LIMITED

.. _subscriptionProfileTargetPlatform-update:

subscriptionProfileTargetPlatform_update
----------------------------------------

.. function:: PUT /orgs/{oid}/subscriptions/{spid}/targetplatforms

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.5``

Updates the target platform access rights list in a subscription profile. 

Any target platform listed in the subscription profile that is not specified in the new target platform list will be removed from the subscription profile. 

.. warning:: The target platform provided must be part of the organization and must be visible and active in the organization.

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

A :ref:`targetPlatforms-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "/orgs/{oid}/subscriptions/{spid}/targetplatforms" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:targetPlatforms>
		<targetPlatforms>
			<targetPlatform>
				<uri>orgs/1/targetplatforms/1</uri>
			</targetPlatform>
		</targetPlatforms>
	</ns0:targetPlatforms>


.. seealso::

	 * :ref:`subscriptionprofile-object`
	 * :ref:`subscriptionProfile-create`
	 * :ref:`subscriptionProfile-getAll`
	 * :ref:`subscriptionProfile-get`
	 * :ref:`subscriptionProfile-update`
	 * :ref:`subscriptionProfile-remove`
	 * :ref:`subscriptionProfileOS-update`
	 * :ref:`subscriptionProfileAdmins-update`
	 * :ref:`subscriptionProfileRoles-update`
	 * :ref:`subscriptionProfileQuotas-update`
	 * :ref:`subscriptionProfileTargetFormat-update`
