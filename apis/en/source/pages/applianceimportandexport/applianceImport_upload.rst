.. Copyright FUJITSU LIMITED 2016-2019

.. _applianceImport-upload:

applianceImport_upload
----------------------

.. function:: POST /users/{uid}/imports/{iid}/uploads

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.5``

Upload the appliance archive. <p/> 

In order to upload an archive, an ``appliance import ticket`` must first be created by using :ref:`appliance-import`. <p/> 

Once the upload is complete, the platform extracts the archive and creates an appliance from the archive contents.  This is an asynchronous job.  To get the status of this import, use :ref:`applianceImportStatus-get`

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``iid`` (required): the id of the :ref:`applianceimport-object` ticket

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The file to upload.

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/imports/{iid}/uploads" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@binaryFilePath"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`applianceImportStatus-get`
	 * :ref:`applianceImport-delete`
	 * :ref:`applianceImport-get`
	 * :ref:`applianceImport-getAll`
	 * :ref:`applianceImport-getAllStatus`
	 * :ref:`appliance-import`
	 * :ref:`applianceimport-object`
