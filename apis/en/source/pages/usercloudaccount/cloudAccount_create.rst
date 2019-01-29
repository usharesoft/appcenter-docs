.. Copyright FUJITSU LIMITED 2016-2019

.. _cloudAccount-create:

cloudAccount_create
-------------------

.. function:: POST /users/{uid}/accounts

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 2.0``

Creates a new cloud account for an user. 

Please refer to :ref:`credaccount-object` for a complete list of all the ``cloud account`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``cloud_account_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`credAccount-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/accounts" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:credAccount xmlns:ns0="http://www.usharesoft.com/uforge">
		<xsi:type></xsi:type>
		<name>OpenStack Example</name>
		<targetPlatform>
			<name>OpenStack</name>
			<type>openstack</type>
		</targetPlatform>
		<glanceUrl>http://ip:9292</glanceUrl>
		<keystoneUrl>http://ip:5000</keystoneUrl>
		<login>username</login>
		<password>password</password>
		<keystoneVersion>v3</keystoneVersion>
	</ns0:credAccount>


.. seealso::

	 * :ref:`cloudAccountCert-create`
	 * :ref:`cloudAccountCert-delete`
	 * :ref:`cloudAccountCert-download`
	 * :ref:`cloudAccountCert-upload`
	 * :ref:`cloudAccountResources-get`
	 * :ref:`cloudAccount-delete`
	 * :ref:`cloudAccount-get`
	 * :ref:`cloudAccount-getAll`
	 * :ref:`cloudAccount-update`
	 * :ref:`credaccount-object`
