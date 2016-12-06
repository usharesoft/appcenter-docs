.. Copyright 2016 FUJITSU LIMITED

.. _projectPkg-get:

projectPkg_get
--------------

.. function:: GET /distributions/{id}/projects/{pid}/pkgs/{pkgid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Retrieves the information of a package contained in a project.  This only retrieves the meta-data of the project. If you wish to download the binaries, please use :ref:`projectPkg-download`.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_projects_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``pid`` (required): the id of the :ref:`project-object`
* ``id`` (required): the id of the :ref:`distribprofile-object`
* ``pkgid`` (required): the id of the :ref:`package-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/distributions/{id}/projects/{pid}/pkgs/{pkgid}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`package-object`
	 * :ref:`projectPkg-create`
	 * :ref:`projectPkg-delete`
	 * :ref:`projectPkg-deleteAll`
	 * :ref:`projectPkg-download`
	 * :ref:`projectPkg-downloadFile`
	 * :ref:`projectPkg-getAll`
	 * :ref:`projectPkg-update`
	 * :ref:`projectPkg-upload`
	 * :ref:`projectPkgs-update`
	 * :ref:`project-create`
	 * :ref:`project-delete`
	 * :ref:`project-get`
	 * :ref:`project-getAll`
	 * :ref:`project-update`
