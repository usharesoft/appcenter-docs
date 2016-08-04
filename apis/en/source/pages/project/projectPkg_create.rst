.. Copyright 2016 FUJITSU LIMITED

.. _projectPkg-create:

projectPkg_create
-----------------

.. function:: POST /distributions/{id}/projects/{pid}/pkgs

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Adds a new package to a project.  This only creates the meta-data for the package, please use :ref:`projectPkg-upload` to upload the file(s). 

Please refer to :ref:`package-object` for a complete list of all the ``pkg`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_projects_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``pid`` (required): the id of the :ref:`project-object`
* ``id`` (required): the id of the :ref:`distribprofile-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`package-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/distributions/{id}/projects/{pid}/pkgs" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:package xmlns:ns0="http://www.usharesoft.com/uforge">
		<size>10</size>
		<origName>example.txt</origName>
	</ns0:package>


.. seealso::

	 * :ref:`package-object`
	 * :ref:`project-create`
	 * :ref:`project-getAll`
	 * :ref:`project-get`
	 * :ref:`project-delete`
	 * :ref:`project-update`
	 * :ref:`projectPkg-get`
	 * :ref:`projectPkg-getAll`
	 * :ref:`projectPkg-delete`
	 * :ref:`projectPkg-deleteAll`
	 * :ref:`projectPkg-download`
	 * :ref:`projectPkg-downloadFile`
	 * :ref:`projectPkgs-update`
	 * :ref:`projectPkg-update`
	 * :ref:`projectPkg-upload`
