.. Copyright 2016 FUJITSU LIMITED

.. _projectLogo-downloadFile:

projectLogo_downloadFile
------------------------

.. function:: GET /orgs/{oid}/projects/{pid}/logo/{logoId}/{fileName}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``*/*``
	* Since: ``UForge 1.0``

Downloads the logo file for the specified project.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``fileName`` (required): the name of the logo file
* ``pid`` (required): the id of the :ref:`project-object`
* ``oid`` (required): the id of the :ref:`org-object`
* ``logoId`` (required): the id of the :ref:`logo-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/projects/{pid}/logo/{logoId}/{fileName}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`project-object`
	 * :ref:`project-create`
	 * :ref:`project-getAll`
	 * :ref:`project-get`
	 * :ref:`project-delete`
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
	 * :ref:`projectLogo-upload`
	 * :ref:`projectLogo-delete`
