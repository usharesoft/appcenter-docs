.. Copyright FUJITSU LIMITED 2016-2019

.. _sshKey-delete:

sshKey_delete
-------------

.. function:: DELETE /users/{uid}/sshkeys/{sshid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.4``

Removes an ssh key from an user.

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

	curl "https://uforge.example.com/api/users/{uid}/sshkeys/{sshid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`sshKey-create`
	 * :ref:`sshKey-get`
	 * :ref:`sshKey-getAll`
	 * :ref:`sshkey-object`
