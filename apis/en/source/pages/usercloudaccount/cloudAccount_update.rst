.. Copyright FUJITSU LIMITED 2016-2019

.. _cloudAccount-update:

cloudAccount_update
-------------------

.. function:: PUT /users/{uid}/accounts/{caid}

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 2.0``

Updates the meta-data of a cloud account. 

Please refer to :ref:`credaccount-object` for a complete list of all the ``cloud account`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``cloud_account_create,cloud_account_edit``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``caid`` (required): the id of the :ref:`credaccount-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`credAccount-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/accounts/{caid}" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:credAccount xmlns:ns0="http://www.usharesoft.com/uforge">
		<xsi:type></xsi:type>
		<name>OpenStack Example Update</name>
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
	 * :ref:`cloudAccount-create`
	 * :ref:`cloudAccount-delete`
	 * :ref:`cloudAccount-get`
	 * :ref:`cloudAccount-getAll`
	 * :ref:`credaccount-object`
