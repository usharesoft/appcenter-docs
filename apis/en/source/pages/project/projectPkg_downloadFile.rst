.. Copyright 2017 FUJITSU LIMITED

.. _projectPkg-downloadFile:

projectPkg_downloadFile
-----------------------

.. function:: GET /distributions/{id}/projects/{pid}/pkgs/{pkgid}/bin/{fileName}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``*/*``
	* Since: ``UForge 1.0``

Downloads the project package binary or archive. 

This request is the same as :ref:`projectPkg-download`. 

The package binary can be downloaded without authentication if an ``downloadId`` is added as a ``query parameter``.  To retrieve the downloadId, use :ref:`projectPkg-get`. 

.. note:: The ``downloadId`` can only be used once, afterwards it expires, and a new ``downloadId`` must be retrieved.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``false``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``fileName`` (required): the file name of the binary to upload
* ``pid`` (required): the id of the :ref:`project-object`
* ``id`` (required): the id of the :ref:`distribprofile-object`
* ``pkgid`` (required): the id of the :ref:`package-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/distributions/{id}/projects/{pid}/pkgs/{pkgid}/bin/{fileName}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`package-object`
	 * :ref:`projectPkg-create`
	 * :ref:`projectPkg-delete`
	 * :ref:`projectPkg-deleteAll`
	 * :ref:`projectPkg-download`
	 * :ref:`projectPkg-get`
	 * :ref:`projectPkg-getAll`
	 * :ref:`projectPkg-update`
	 * :ref:`projectPkg-upload`
	 * :ref:`projectPkgs-update`
	 * :ref:`project-create`
	 * :ref:`project-delete`
	 * :ref:`project-get`
	 * :ref:`project-getAll`
	 * :ref:`project-update`
