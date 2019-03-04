.. Copyright FUJITSU LIMITED 2016-2019

.. _userAvatar-upload:

userAvatar_upload
-----------------

.. function:: POST /users/{uid}/photo/{photoId}/{fileName}

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.0``

Uploads an avatar photo for an user.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``user_profile_edit``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``fileName`` (required): the file name of the photo to download
* ``photoId`` (required): the id of the :ref:`logo-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The file to upload.

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/photo/{photoId}/{fileName}" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@binaryFilePath"

.. seealso::

	 * :ref:`user-api-resources`
	 * :ref:`user-object`
	 * :ref:`userAvatar-delete`
	 * :ref:`userAvatar-download`
	 * :ref:`userAvatar-downloadFile`
	 * :ref:`userPassword-reset`
