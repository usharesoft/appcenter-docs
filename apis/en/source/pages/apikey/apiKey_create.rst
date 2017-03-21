.. Copyright 2017 FUJITSU LIMITED

.. _apiKey-create:

apiKey_create
-------------

.. function:: POST /users/{uid}/apikeys

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.7``

Creates an API Key for the specified user. 

.. note:: The :ref:`apikeypair-object` can be empty as only the description information is used.  The public and secret key information is generated automatically.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``api_key_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`apiKeyPair-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/apikeys" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml



.. seealso::

	 * :ref:`apiKey-delete`
	 * :ref:`apiKey-getAll`
	 * :ref:`apiKey-update`
	 * :ref:`apikeypairs-object`
	 * :ref:`user-object`
