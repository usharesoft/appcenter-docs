.. Copyright FUJITSU LIMITED 2016-2019

.. _subscriptionProfile-create:

subscriptionProfile_create
--------------------------

.. function:: POST /orgs/{oid}/subscriptions

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.5``

Create a new subscription profile in an organization.  A subscription profile describes a certain number of access parameters, and is used to customize the access rights automatically provided to new users being created on the platform. 

Please refer to :ref:`subscriptionprofile-object` for a complete list of all the ``subscription profile`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`subscriptionProfile-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/subscriptions" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:subscriptionProfile xmlns:ns0="http://www.usharesoft.com/uforge">
		<active>true</active>
		<code>example</code>
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
	 * :ref:`subscriptionProfile-get`
	 * :ref:`subscriptionProfile-getAll`
	 * :ref:`subscriptionProfile-remove`
	 * :ref:`subscriptionProfile-update`
	 * :ref:`subscriptionprofile-object`
