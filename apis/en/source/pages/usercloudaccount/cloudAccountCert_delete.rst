.. Copyright FUJITSU LIMITED 2016-2019

.. _cloudAccountCert-delete:

cloudAccountCert_delete
-----------------------

.. function:: DELETE /users/{uid}/accounts/{caid}/certs/{certid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 2.0``

Remove a certificate file from a user's cloud account.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``cloud_account_delete``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``caid`` (required): the id of the :ref:`credaccount-object`
* ``certid`` (required): the id of the :ref:`certificate-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/accounts/{caid}/certs/{certid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`certificate-object`
	 * :ref:`cloudAccountCert-create`
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
