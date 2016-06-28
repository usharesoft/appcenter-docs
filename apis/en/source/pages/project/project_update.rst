.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _project-update:

project_update
--------------

.. function:: PUT /distributions/{id}/projects/{pid}

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Updates the information of a project. 

Please refer to :ref:`project-object` for a complete list of all the ``project`` attributes.

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

A :ref:`project-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "/distributions/{id}/projects/{pid}" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:project>
		<category>Blogging</category>
		<company>
			<name>Maintainer Example</name>
		</company>
		<distributionUri>distributions/1</distributionUri>
		<license>
			<type>Custom</type>
		</license>
		<name>Project Example</name>
		<version>1.0</version>
		<shortTag>INTERNAL</shortTag>
	</ns0:project>


.. seealso::

	 * :ref:`package-object`
	 * :ref:`project-create`
	 * :ref:`project-getAll`
	 * :ref:`project-get`
	 * :ref:`project-delete`
	 * :ref:`projectPkg-create`
	 * :ref:`projectPkg-get`
	 * :ref:`projectPkg-getAll`
	 * :ref:`projectPkg-delete`
	 * :ref:`projectPkg-deleteAll`
	 * :ref:`projectPkg-download`
	 * :ref:`projectPkg-downloadFile`
	 * :ref:`projectPkgs-update`
	 * :ref:`projectPkg-update`
	 * :ref:`projectPkg-upload`
