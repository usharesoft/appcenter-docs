.. Copyright 2017 FUJITSU LIMITED

.. _projectLicense-uploadChunk:

projectLicense_uploadChunk
--------------------------

.. function:: POST /orgs/{oid}/projects/{pid}/licenses/{lid}

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Uploads a license file for a project. This request is similar to :ref:`projectLicense-upload`

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_projects_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``lid`` (required): the id of the :ref:`license-object`
* ``pid`` (required): the id of the :ref:`project-object`
* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The file to upload.

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/projects/{pid}/licenses/{lid}" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@binaryFilePath"

.. seealso::

	 * :ref:`license-object`
	 * :ref:`project-object`
	 * :ref:`projectLicense-delete`
	 * :ref:`projectLicense-download`
	 * :ref:`projectLicense-upload`
	 * :ref:`projectLicense-uploadChunk`
