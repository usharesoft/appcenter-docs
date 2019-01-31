.. Copyright FUJITSU LIMITED 2016-2019

.. _cloudAccountCert-download:

cloudAccountCert_download
-------------------------

.. function:: GET /users/{uid}/accounts/{caid}/certs/{certid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``*/*``
	* Since: ``UForge 2.0``

Downloads a certificate from an user's cloud account. 

The certificate can be downloaded without authentication if an ``downloadId`` is added as a ``query parameter``.  To retrieve the downloadId, use :ref:`cloudAccount-get`. 

.. note:: The ``downloadId`` can only be used once, afterwards it expires, and a new ``downloadId`` must be retrieved.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

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

	curl "https://uforge.example.com/api/users/{uid}/accounts/{caid}/certs/{certid}" -X GET \
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
