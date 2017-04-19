.. Copyright 2017 FUJITSU LIMITED

.. _apiKey-delete:

apiKey_delete
-------------

.. function:: DELETE /users/{uid}/apikeys/{akid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.0``

Deletes an API key from the specified user.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``api_key_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``akid`` (required): the id of the API key to delete

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/apikeys/{akid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`user-object`
	 * :ref:`apikeypairs-object`
	 * :ref:`apiKey-getAll`
	 * :ref:`apiKey-create`
