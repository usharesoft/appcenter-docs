.. Copyright 2017 FUJITSU LIMITED

.. _project-delete:

project_delete
--------------

.. function:: DELETE /orgs/{oid}/projects/{pid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Removes a project from the ``Project Catalog``. 

The project is not physically deleted from the database but marked as "obsolete".  Users will no longer be able to use this project in an appliance, however ensures that appliances currently using the project are not adversely affected. 

.. note:: To force the physical deletion of a project, use the ``erase`` query parameter.  In this case all the binaries and meta-data of a project are deleted.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_projects_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``pid`` (required): the id of the :ref:`project-object`
* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/projects/{pid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`project-object`
	 * :ref:`project-create`
	 * :ref:`project-getAll`
	 * :ref:`project-get`
	 * :ref:`project-update`
	 * :ref:`projectOs-getAll`
	 * :ref:`projectArtifact-create`
	 * :ref:`projectArtifact-getAll`
	 * :ref:`projectArtifact-get`
	 * :ref:`projectArtifact-updateAll`
	 * :ref:`projectArtifact-update`
	 * :ref:`projectArtifact-upload`
	 * :ref:`projectArtifact-deleteAll`
	 * :ref:`projectArtifact-delete`
	 * :ref:`projectArtifact-download`
	 * :ref:`projectArtifact-downloadFile`
	 * :ref:`projectArtifact-createFromRemoteServer`
	 * :ref:`projectArtifact-addOrRemoveFileFromCache`
	 * :ref:`projectArtifact-addChild`
	 * :ref:`projectLogo-download`
	 * :ref:`projectLogo-downloadFile`
	 * :ref:`projectLogo-upload`
	 * :ref:`projectLogo-delete`
