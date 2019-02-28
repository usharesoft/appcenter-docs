.. Copyright FUJITSU LIMITED 2016-2019

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
	 * :ref:`projectArtifact-addChild`
	 * :ref:`projectArtifact-addOrRemoveFileFromCache`
	 * :ref:`projectArtifact-create`
	 * :ref:`projectArtifact-createFromRemoteServer`
	 * :ref:`projectArtifact-delete`
	 * :ref:`projectArtifact-deleteAll`
	 * :ref:`projectArtifact-download`
	 * :ref:`projectArtifact-downloadFile`
	 * :ref:`projectArtifact-get`
	 * :ref:`projectArtifact-getAll`
	 * :ref:`projectArtifact-update`
	 * :ref:`projectArtifact-updateAll`
	 * :ref:`projectArtifact-upload`
	 * :ref:`projectLogo-delete`
	 * :ref:`projectLogo-download`
	 * :ref:`projectLogo-upload`
	 * :ref:`projectRestrictionOS-evaluate`
	 * :ref:`projectRestriction-update`
	 * :ref:`project-availableForImage`
	 * :ref:`project-create`
	 * :ref:`project-delete`
	 * :ref:`project-get`
	 * :ref:`project-getAll`
	 * :ref:`project-update`
