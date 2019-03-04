.. Copyright FUJITSU LIMITED 2016-2019

.. _applianceBootScript-upload:

applianceBootScript_upload
--------------------------

.. function:: POST /users/{uid}/appliances/{aid}/bootscripts/{bsid}/bin/{fileName}

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 2.1.06``

Uploads a boot script file. 

Prior to uploading a boot script file, a :ref:`bootscript-object` object must be created.  Refer to :ref:`applianceBootScript-create` to understand how to create a new boot script object for an appliance.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``bsid`` (required): the id of the :ref:`bootscript-object`
* ``fileName`` (required): the boot script filename to add
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The file to upload.

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/bootscripts/{bsid}/bin/{fileName}" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@binaryFilePath"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`applianceBootScript-create`
	 * :ref:`applianceBootScript-delete`
	 * :ref:`applianceBootScript-deleteAll`
	 * :ref:`applianceBootScript-download`
	 * :ref:`applianceBootScript-downloadFile`
	 * :ref:`applianceBootScript-get`
	 * :ref:`applianceBootScript-getAll`
	 * :ref:`applianceBootScript-update`
	 * :ref:`bootscript-object`
