.. Copyright 2016 FUJITSU LIMITED

.. _cloudAccountCert-upload:

cloudAccountCert_upload
-----------------------

.. function:: POST /users/{uid}/accounts/{caid}/certs/{certid}/{fileName}

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 2.0``

Uploads a certificate to a user's cloud account. 

.. note:: If you wish to replace a certificate, then prior to uploading please delete the current certificate by using :ref:`cloudAccountCert-delete`.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``cloud_account_create,cloud_account_edit``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object`
* ``fileName`` (required): the file name of the certificate
* ``caid`` (required): the id of the :ref:`credaccount-object`
* ``certid`` (required): 

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The file to upload.

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "/users/{uid}/accounts/{caid}/certs/{certid}/{fileName}" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@binaryFilePath"

.. seealso::

	 * :ref:`credaccount-object`
	 * :ref:`certificate-object`
	 * :ref:`cloudAccount-create`
	 * :ref:`cloudAccount-getAll`
	 * :ref:`cloudAccount-get`
	 * :ref:`cloudAccount-update`
	 * :ref:`cloudAccount-delete`
	 * :ref:`cloudAccountResources-get`
	 * :ref:`cloudAccountCert-create`
	 * :ref:`cloudAccountCert-download`
	 * :ref:`cloudAccountCert-delete`
	 * :ref:`cloudAccountCert-upload`
