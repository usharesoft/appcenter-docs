.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _userAvatar-downloadFile:

userAvatar_downloadFile
-----------------------

.. function:: GET /users/{uid}/photo/{photoId}/{fileName}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``*/*``
	* Since: ``UForge 3.0``

Downloads the avatar photo for an user. 

This request is similar to :ref:`userAvatar-download`

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``false``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object`
* ``fileName`` (required): the file name of the photo to download
* ``photoId`` (required): the id of the :ref:`logo-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "/users/{uid}/photo/{photoId}/{fileName}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`user-api-resources`
	 * :ref:`user-object`
	 * :ref:`userAvatar-delete`
	 * :ref:`userAvatar-download`
	 * :ref:`userAvatar-upload`
	 * :ref:`userPassword-reset`
