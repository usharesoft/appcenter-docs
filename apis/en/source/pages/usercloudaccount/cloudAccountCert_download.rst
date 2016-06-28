.. Copyright 2016 FUJITSU LIMITED

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

* ``uid`` (required): the id of the :ref:`user-object`
* ``caid`` (required): the id of the :ref:`credaccount-object`
* ``certid`` (required): the id of the :ref:`certificate-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "http://www.example.com/api/users/{uid}/accounts/{caid}/certs/{certid}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

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
