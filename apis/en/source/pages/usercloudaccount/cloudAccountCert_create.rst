.. Copyright FUJITSU LIMITED 2016-2019

.. _cloudAccountCert-create:

cloudAccountCert_create
-----------------------

.. function:: POST /users/{uid}/accounts/{caid}/certs

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 2.0``

Creates a new certificate for a cloud account. 

This provides the meta-data of the certificate as well as the certificate contents.  If the certificate is a file, then please use :ref:`cloudAccountCert-upload`.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``cloud_account_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``caid`` (required): the id of the :ref:`credaccount-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`certificate-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/accounts/{caid}/certs" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:certificate xmlns:ns0="http://www.usharesoft.com/uforge">
		<name>x509 cert for Amazon EC2</name>
		<type>x509</type>
		<certStr>certifacte-content</certStr>
	</ns0:certificate>


.. seealso::

	 * :ref:`cloudAccountCert-delete`
	 * :ref:`cloudAccountCert-download`
	 * :ref:`cloudAccountCert-upload`
	 * :ref:`cloudAccountResources-get`
	 * :ref:`cloudAccount-create`
	 * :ref:`cloudAccount-delete`
	 * :ref:`cloudAccount-get`
	 * :ref:`cloudAccount-getAll`
	 * :ref:`cloudAccount-update`
	 * :ref:`credaccount-object`
