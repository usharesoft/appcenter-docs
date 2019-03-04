.. Copyright FUJITSU LIMITED 2016-2019

.. _apiKey-update:

apiKey_update
-------------

.. function:: PUT /users/{uid}/apikeys/{akid}

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.7``

Updates an API key. 

.. note:: Only the optional meta-data ``name`` and ``description`` can be updated.  The actual key pair information will not be changed.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``api_key_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``akid`` (required): the id of the :ref:`apikeypair-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`apiKeyPair-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/apikeys/{akid}" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml



.. seealso::

	 * :ref:`apiKey-create`
	 * :ref:`apiKey-getAll`
	 * :ref:`apikeypairs-object`
	 * :ref:`user-object`
