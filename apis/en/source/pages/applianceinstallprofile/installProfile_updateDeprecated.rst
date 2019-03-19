.. Copyright FUJITSU LIMITED 2016-2019

.. _installProfile-updateDeprecated:

installProfile_updateDeprecated
-------------------------------

.. function:: PUT /users/{uid}/appliances/{aid}/installProfile

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Updates an installation profile for an appliance.

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

A :ref:`installProfile-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/installProfile" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:installProfile xmlns:ns0="http://www.usharesoft.com/uforge">
		<firewallAuto>true</firewallAuto>
		<firewallEnabled>false</firewallEnabled>
		<internetSettingsAuto>true</internetSettingsAuto>
		<keyboard>ar-azerty</keyboard>
		<keyboardAuto>false</keyboardAuto>
		<partitionAuto>true</partitionAuto>
		<rootUser>
			<disablePasswordLogin>false</disablePasswordLogin>
			<encrypted>false</encrypted>
			<fullName>root</fullName>
			<name>root</name>
			<password>example</password>
			<passwordAuto>true</passwordAuto>
		</rootUser>
		<timezone>Europe/London</timezone>
		<timezoneAuto>true</timezoneAuto>
	</ns0:installProfile>


.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`applianceinstallusersandgroups-api-resources`
	 * :ref:`appliancepartitiontabledisk-api-resources`
	 * :ref:`installProfile-get`
	 * :ref:`installprofile-object`
	 * :ref:`osgroup-object`
	 * :ref:`osuser-object`
