.. Copyright FUJITSU LIMITED 2016-2019

.. _subscriptionProfileTargetFormat-update:

subscriptionProfileTargetFormat_update
--------------------------------------

.. function:: PUT /orgs/{oid}/subscriptions/{spid}/targetformats

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.5``

Updates the target formats access rights list in a subscription profile. 

Any target formats listed in the subscription profile that is not specified in the new target formats list will be removed from the subscription profile. 

.. warning:: The target formats provided must be part of the organization and must be visible and active in the organization.

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

A :ref:`targetFormats-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/subscriptions/{spid}/targetformats" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:targetFormats xmlns:ns0="http://www.usharesoft.com/uforge">
		<targetFormats>
			<targetFormat>
				<uri>orgs/1/targetformats/1</uri>
			</targetFormat>
		</targetFormats>
	</ns0:targetFormats>


.. seealso::

	 * :ref:`subscriptionProfileAdmins-update`
	 * :ref:`subscriptionProfileOS-update`
	 * :ref:`subscriptionProfileQuotas-update`
	 * :ref:`subscriptionProfileRoles-update`
	 * :ref:`subscriptionProfileTargetPlatform-update`
	 * :ref:`subscriptionProfile-create`
	 * :ref:`subscriptionProfile-get`
	 * :ref:`subscriptionProfile-getAll`
	 * :ref:`subscriptionProfile-remove`
	 * :ref:`subscriptionProfile-update`
	 * :ref:`subscriptionprofile-object`
