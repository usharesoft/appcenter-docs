.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _userAvatar-delete:

userAvatar_delete
-----------------

.. function:: DELETE /users/{uid}/photo/{photoId}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.0``

Removes an uploaded avatar photo for an user.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``user_profile_edit``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object`
* ``photoId`` (required): the id of the :ref:`logo-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "http://www.example.com/api/users/{uid}/photo/{photoId}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`user-api-resources`
	 * :ref:`user-object`
	 * :ref:`userAvatar-download`
	 * :ref:`userAvatar-downloadFile`
	 * :ref:`userAvatar-upload`
	 * :ref:`userPassword-reset`
