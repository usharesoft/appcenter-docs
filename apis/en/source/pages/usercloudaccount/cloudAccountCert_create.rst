.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

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

* ``uid`` (required): the id of the :ref:`user-object`
* ``caid`` (required): the id of the :ref:`credaccount-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`certificate-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "/users/{uid}/accounts/{caid}/certs" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:certificate>
		<name>x509 cert for Amazon EC2</name>
		<type>x509</type>
		<certStr>certifacte-content</certStr>
	</ns0:certificate>


.. seealso::

	 * :ref:`credaccount-object`
	 * :ref:`cloudAccount-create`
	 * :ref:`cloudAccount-getAll`
	 * :ref:`cloudAccount-get`
	 * :ref:`cloudAccount-update`
	 * :ref:`cloudAccount-delete`
	 * :ref:`cloudAccountResources-get`
	 * :ref:`cloudAccountCert-download`
	 * :ref:`cloudAccountCert-delete`
	 * :ref:`cloudAccountCert-upload`
