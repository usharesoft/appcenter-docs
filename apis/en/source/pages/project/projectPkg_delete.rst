.. Copyright 2016 FUJITSU LIMITED

.. _projectPkg-delete:

projectPkg_delete
-----------------

.. function:: DELETE /distributions/{id}/projects/{pid}/pkgs/{pkgid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 1.0``

Removes a package binary from a project. 

.. note:: This does not delete the package meta-data from the project, only the binary that has been uploaded.

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

	curl "https://uforge.example.com/api/distributions/{id}/projects/{pid}/pkgs/{pkgid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`package-object`
	 * :ref:`projectPkg-create`
	 * :ref:`projectPkg-deleteAll`
	 * :ref:`projectPkg-download`
	 * :ref:`projectPkg-downloadFile`
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
