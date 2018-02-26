.. Copyright 2017 FUJITSU LIMITED

.. _sshKey-getAll:

sshKey_getAll
-------------

.. function:: GET /users/{uid}/sshkeys

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.4``

Retrieves all the publish SSH keys for an user. 

A list of :ref:`sshkey-object` objects are returned. 

The query parameter ``name`` can be used to search for a subset of ssh keys.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/sshkeys" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`sshKey-create`
	 * :ref:`sshKey-delete`
	 * :ref:`sshKey-get`
	 * :ref:`sshkey-object`
