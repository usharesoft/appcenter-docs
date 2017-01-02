.. Copyright 2016 FUJITSU LIMITED

.. _projectRestriction-add:

projectRestriction_add
----------------------

.. function:: POST /orgs/{oid}/projects/{pid}/restrictions

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Adds a new Bundle Restriction to a project. 

Please refer to :ref:`bundlerestriction-object` for a complete list of all the ``bundle restriction`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``software_upload``

URI Parameters
~~~~~~~~~~~~~~

* ``pid`` (required): the id of the :ref:`project-object`
* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`bundleRestriction-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/projects/{pid}/restrictions" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:bundleRestriction xmlns:ns0="http://www.usharesoft.com/uforge">
		<parentUri>orgs/{oid}/projects/{pid}</parentUri>
		<type>DISTRIBUTION</type>
	</ns0:bundleRestriction>


.. seealso::

	 * :ref:`project-object`
	 * :ref:`projectArtifact-addChild`
	 * :ref:`projectArtifact-addOrRemoveFileFromCache`
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
	 * :ref:`projectLogo-downloadFile`
	 * :ref:`projectLogo-upload`
	 * :ref:`projectOs-getAll`
	 * :ref:`projectRestrictionOs-getAll`
	 * :ref:`projectRestriction-delete`
	 * :ref:`projectRestriction-deleteAll`
	 * :ref:`projectRestriction-get`
	 * :ref:`projectRestriction-getAll`
	 * :ref:`projectRestriction-update`
	 * :ref:`project-create`
	 * :ref:`project-delete`
	 * :ref:`project-get`
	 * :ref:`project-getAll`
	 * :ref:`project-update`
	 * :ref:`softwareartifact-object`
