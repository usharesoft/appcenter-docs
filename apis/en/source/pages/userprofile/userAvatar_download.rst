.. Copyright FUJITSU LIMITED 2016-2019

.. _userAvatar-download:

userAvatar_download
-------------------

.. function:: GET /users/{uid}/photo/{photoId}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``*/*``
	* Since: ``UForge 3.0``

Downloads the avatar photo for an user. 

This request is similar to :ref:`userAvatar-downloadFile`

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``photoId`` (required): the id of the :ref:`logo-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/photo/{photoId}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`user-api-resources`
	 * :ref:`user-object`
	 * :ref:`userAvatar-delete`
	 * :ref:`userAvatar-downloadFile`
	 * :ref:`userAvatar-upload`
	 * :ref:`userPassword-reset`
