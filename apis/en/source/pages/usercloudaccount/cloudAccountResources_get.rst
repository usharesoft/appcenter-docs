.. Copyright 2017 FUJITSU LIMITED

.. _cloudAccountResources-get:

cloudAccountResources_get
-------------------------

.. function:: GET /users/{uid}/accounts/{caid}/resources

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 2.0``

Retrieves any dynamic resource information from the tagret cloud environment. 

The cloud account information is used with the target cloud's APIs to retrieve any resource information that is required to register generated machine images to the target cloud environment.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``image_publish``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``caid`` (required): the id of the :ref:`credaccount-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/accounts/{caid}/resources" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`credaccount-object`
	 * :ref:`cloudAccount-create`
	 * :ref:`cloudAccount-getAll`
	 * :ref:`cloudAccount-get`
	 * :ref:`cloudAccount-update`
	 * :ref:`cloudAccount-delete`
	 * :ref:`cloudAccountCert-create`
	 * :ref:`cloudAccountCert-download`
	 * :ref:`cloudAccountCert-delete`
	 * :ref:`cloudAccountCert-upload`
