.. Copyright FUJITSU LIMITED 2016-2019

.. _subscriptionProfile-update:

subscriptionProfile_update
--------------------------

.. function:: PUT /orgs/{oid}/subscriptions/{spid}

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.5``

Update the information of a subscription profile. 

Please refer to :ref:`subscriptionprofile-object` for a complete list of all the ``subscription profile`` attributes.

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

A :ref:`subscriptionProfile-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/subscriptions/{spid}" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:subscriptionProfile xmlns:ns0="http://www.usharesoft.com/uforge">
		<active>true</active>
		<code>example2</code>
		<description>Description example</description>
		<name>example</name>
	</ns0:subscriptionProfile>


.. seealso::

	 * :ref:`subscriptionProfileAdmins-update`
	 * :ref:`subscriptionProfileOS-update`
	 * :ref:`subscriptionProfileQuotas-update`
	 * :ref:`subscriptionProfileRoles-update`
	 * :ref:`subscriptionProfileTargetFormat-update`
	 * :ref:`subscriptionProfileTargetPlatform-update`
	 * :ref:`subscriptionProfile-create`
	 * :ref:`subscriptionProfile-get`
	 * :ref:`subscriptionProfile-getAll`
	 * :ref:`subscriptionProfile-remove`
	 * :ref:`subscriptionprofile-object`
