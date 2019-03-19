.. Copyright FUJITSU LIMITED 2016-2019

.. _sshKey-get:

sshKey_get
----------

.. function:: GET /users/{uid}/sshkeys/{sshid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.4``

Retrieves a public SSH key for an user.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``sshid`` (required): the id of the :ref:`sshkey-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/sshkeys/{sshid}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`sshKey-create`
	 * :ref:`sshKey-delete`
	 * :ref:`sshKey-getAll`
	 * :ref:`sshkey-object`
