.. Copyright 2017 FUJITSU LIMITED

.. _projectArtifact-download:

projectArtifact_download
------------------------

.. function:: GET /orgs/{oid}/projects/{pid}/artifacts/{said}/bin

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``*/*``
	* Since: ``UForge 1.0``

Downloads the software artifact binary or archive. 

This request is the same as :ref:`projectArtifact-downloadFile`. 

The software artifact binary can be downloaded without authentication if an ``downloadId`` is added as a ``query parameter``.  To retrieve the downloadId, use :ref:`projectArtifact-get`. 

.. note:: The ``downloadId`` can only be used once, afterwards it expires, and a new ``downloadId`` must be retrieved.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_projects_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``pid`` (required): the id of the :ref:`project-object`
* ``oid`` (required): the id of the :ref:`org-object`
* ``said`` (required): the id of the :ref:`softwareartifact-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/projects/{pid}/artifacts/{said}/bin" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`project-object`
	 * :ref:`softwareartifact-object`
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
	 * :ref:`projectArtifact-downloadFile`
	 * :ref:`projectArtifact-createFromRemoteServer`
	 * :ref:`projectArtifact-addOrRemoveFileFromCache`
	 * :ref:`projectArtifact-addChild`
	 * :ref:`projectLogo-download`
	 * :ref:`projectLogo-downloadFile`
	 * :ref:`projectLogo-upload`
	 * :ref:`projectLogo-delete`
