.. Copyright FUJITSU LIMITED 2016-2019

.. _subscriptionProfileRoles-update:

subscriptionProfileRoles_update
-------------------------------

.. function:: PUT /orgs/{oid}/subscriptions/{spid}/roles

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.5``

Updates the roles in a subscription profile. 

Any role listed in the subscription profile that is not specified in the new role list will be removed from the subscription profile. 

.. warning:: The roles provided must be already created in the organization.

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

A :ref:`roles-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/subscriptions/{spid}/roles" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:roles xmlns:ns0="http://www.usharesoft.com/uforge">
		<roles>
			<role>
				<name>role1</name>
			</role>
		</roles>
	</ns0:roles>


.. seealso::

	 * :ref:`subscriptionProfileAdmins-update`
	 * :ref:`subscriptionProfileOS-update`
	 * :ref:`subscriptionProfileQuotas-update`
	 * :ref:`subscriptionProfileTargetFormat-update`
	 * :ref:`subscriptionProfileTargetPlatform-update`
	 * :ref:`subscriptionProfile-create`
	 * :ref:`subscriptionProfile-get`
	 * :ref:`subscriptionProfile-getAll`
	 * :ref:`subscriptionProfile-remove`
	 * :ref:`subscriptionProfile-update`
	 * :ref:`subscriptionprofile-object`
