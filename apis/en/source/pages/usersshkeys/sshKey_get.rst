.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

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

* ``uid`` (required): the id of the :ref:`user-object`
* ``sshid`` (required): the id of the :ref:`sshkey-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "/users/{uid}/sshkeys/{sshid}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`sshkey-object`
	 * :ref:`sshKey-getAll`
	 * :ref:`sshKey-create`
	 * :ref:`sshKey-delete`
