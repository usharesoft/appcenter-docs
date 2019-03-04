.. Copyright FUJITSU LIMITED 2016-2019

.. _subscriptionProfileQuotas-update:

subscriptionProfileQuotas_update
--------------------------------

.. function:: PUT /orgs/{oid}/subscriptions/{spid}/quotas

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.5``

Updates the quotas in a subscription profile.

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

A :ref:`quotas-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/subscriptions/{spid}/quotas" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:quotas xmlns:ns0="http://www.usharesoft.com/uforge">
		<quotas>
			<quota>
				<limit>-1</limit>
				<type>generation</type>
			</quota>
			<quota>
				<limit>10</limit>
				<type>appliance</type>
			</quota>
			<quota>
				<limit>-1</limit>
				<type>scan</type>
			</quota>
			<quota>
				<limit>-1</limit>
				<type>diskusage</type>
			</quota>
		</quotas>
	</ns0:quotas>


.. seealso::

	 * :ref:`subscriptionProfileAdmins-update`
	 * :ref:`subscriptionProfileOS-update`
	 * :ref:`subscriptionProfileRoles-update`
	 * :ref:`subscriptionProfileTargetFormat-update`
	 * :ref:`subscriptionProfileTargetPlatform-update`
	 * :ref:`subscriptionProfile-create`
	 * :ref:`subscriptionProfile-get`
	 * :ref:`subscriptionProfile-getAll`
	 * :ref:`subscriptionProfile-remove`
	 * :ref:`subscriptionProfile-update`
	 * :ref:`subscriptionprofile-object`
