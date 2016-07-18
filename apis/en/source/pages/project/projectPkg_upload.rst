.. Copyright 2016 FUJITSU LIMITED

.. _projectPkg-upload:

projectPkg_upload
-----------------

.. function:: POST /distributions/{id}/projects/{pid}/pkgs/{pkgid}/bin/{fileName}

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Uploads a binary file to project package.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_projects_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``fileName`` (required): the file name of the binary to upload
* ``pid`` (required): the id of the :ref:`project-object`
* ``id`` (required): the id of the :ref:`distribprofile-object`
* ``pkgid`` (required): 

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The file to upload.

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/distributions/{id}/projects/{pid}/pkgs/{pkgid}/bin/{fileName}" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@binaryFilePath"

.. seealso::

	 * :ref:`package-object`
	 * :ref:`project-create`
	 * :ref:`project-getAll`
	 * :ref:`project-get`
	 * :ref:`project-delete`
	 * :ref:`project-update`
	 * :ref:`projectPkg-create`
	 * :ref:`projectPkg-get`
	 * :ref:`projectPkg-getAll`
	 * :ref:`projectPkg-delete`
	 * :ref:`projectPkg-deleteAll`
	 * :ref:`projectPkg-download`
	 * :ref:`projectPkg-downloadFile`
	 * :ref:`projectPkgs-update`
	 * :ref:`projectPkg-update`
