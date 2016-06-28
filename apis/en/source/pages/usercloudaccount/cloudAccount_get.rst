.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _cloudAccount-get:

cloudAccount_get
----------------

.. function:: GET /users/{uid}/accounts/{caid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 2.0``

Retrieve the information of a cloud account.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object`
* ``caid`` (required): the id of the :ref:`credaccount-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "/users/{uid}/accounts/{caid}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`credaccount-object`
	 * :ref:`cloudAccount-create`
	 * :ref:`cloudAccount-getAll`
	 * :ref:`cloudAccount-update`
	 * :ref:`cloudAccount-delete`
	 * :ref:`cloudAccountResources-get`
	 * :ref:`cloudAccountCert-create`
	 * :ref:`cloudAccountCert-download`
	 * :ref:`cloudAccountCert-delete`
	 * :ref:`cloudAccountCert-upload`
