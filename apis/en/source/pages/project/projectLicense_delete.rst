.. Copyright FUJITSU LIMITED 2016-2019

.. _projectLicense-delete:

projectLicense_delete
---------------------

.. function:: DELETE /orgs/{oid}/projects/{pid}/licenses/{lid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Remove a license file from a project.

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

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/projects/{pid}/licenses/{lid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`license-object`
	 * :ref:`project-object`
	 * :ref:`projectLicense-delete`
	 * :ref:`projectLicense-download`
	 * :ref:`projectLicense-upload`
	 * :ref:`projectLicense-uploadChunk`
