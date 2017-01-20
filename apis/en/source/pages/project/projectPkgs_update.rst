.. Copyright 2017 FUJITSU LIMITED

.. _projectPkgs-update:

projectPkgs_update
------------------

.. function:: PUT /distributions/{id}/projects/{pid}/pkgs

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Updates the information of a set of package contained in a project.  This only updates the meta-data for the package, please use :ref:`projectPkg-upload` to upload the file(s). 

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

A :ref:`packages-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/distributions/{id}/projects/{pid}/pkgs" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:packages xmlns:ns0="http://www.usharesoft.com/uforge">
		<packages>
			<package>
				<size>10</size>
				<origName>example.txt</origName>
			</package>
		</packages>
	</ns0:packages>


.. seealso::

	 * :ref:`package-object`
	 * :ref:`projectPkg-create`
	 * :ref:`projectPkg-delete`
	 * :ref:`projectPkg-deleteAll`
	 * :ref:`projectPkg-download`
	 * :ref:`projectPkg-downloadFile`
	 * :ref:`projectPkg-get`
	 * :ref:`projectPkg-getAll`
	 * :ref:`projectPkg-update`
	 * :ref:`projectPkg-upload`
	 * :ref:`project-create`
	 * :ref:`project-delete`
	 * :ref:`project-get`
	 * :ref:`project-getAll`
	 * :ref:`project-update`
