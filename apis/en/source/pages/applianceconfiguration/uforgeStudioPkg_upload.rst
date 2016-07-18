.. Copyright 2016 FUJITSU LIMITED

.. _uforgeStudioPkg-upload:

uforgeStudioPkg_upload
----------------------

.. function:: POST /users/{uid}/appliances/{aid}/oas/{oaspkgid}/bin/{fileName}

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Uploads a UForge Studio package binary.  A package can be of type ``.rpm`` or ``.deb``. 

In order to upload the package binary, please first create an :ref:`oaspkg-object` that stores the meta-data of an UForge Studio package.  For more information refer to :ref:`uforgeStudioPkg-create`

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``studio_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``aid`` (required): the id of the :ref:`appliance-object`
* ``oaspkgid`` (required): the id of the :ref:`oaspkg-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The file to upload.

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/oas/{oaspkgid}/bin/{fileName}" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@binaryFilePath"

.. seealso::

	 * :ref:`oaspkg-object`
	 * :ref:`appliance-object`
	 * :ref:`uforgeStudioPkg-create`
	 * :ref:`uforgeStudioPkg-delete`
	 * :ref:`uforgeStudioPkg-get`
	 * :ref:`uforgeStudioPkg-update`
	 * :ref:`uforgeStudioPkg-download`
	 * :ref:`uforgeStudioPkgLicense-download`
	 * :ref:`uforgeStudioPkgLicense-delete`
	 * :ref:`uforgeStudioPkgLicense-upload`
	 * :ref:`uforgeStudioPkgLicense-uploadFile`
