.. Copyright FUJITSU LIMITED 2016-2019

.. _apiKey-getAll:

apiKey_getAll
-------------

.. function:: GET /users/{uid}/apikeys

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.0``

Returns all the API keys for the specified user.

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

	curl "https://uforge.example.com/api/users/{uid}/apikeys" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`apiKey-create`
	 * :ref:`apiKey-delete`
	 * :ref:`apiKey-update`
	 * :ref:`apikeypairs-object`
	 * :ref:`user-object`
