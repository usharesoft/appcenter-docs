.. Copyright 2016 FUJITSU LIMITED

.. _apiKey-create:

apiKey_create
-------------

.. function:: POST /users/{uid}/apikeys

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.0``

Creates an API Key for the specified user. 

.. note:: No request body is required in HTTP POST, as the internal platform will automatically generate a new api key pair.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``api_key_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/apikeys" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`apiKey-delete`
	 * :ref:`apiKey-getAll`
	 * :ref:`apikeypairs-object`
	 * :ref:`user-object`
