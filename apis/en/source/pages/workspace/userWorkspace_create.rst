.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _userWorkspace-create:

userWorkspace_create
--------------------

.. function:: POST /users/{uid}/workspaces

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.3.2``

Creates a new workspace in an organization. 

This request is similar to :ref:`workspace-create` 

Please refer to :ref:`workspace-object` for a complete list of all the ``workspace`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``workspace_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`workspace-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "http://www.example.com/api/users/{uid}/workspaces" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:workspace>
		<name>Workspace Example</name>
	</ns0:workspace>


.. seealso::

	 * :ref:`workspacemembers-api-resources`
	 * :ref:`workspacetemplate-api-resources`
	 * :ref:`workspacecomments-api-resources`
	 * :ref:`workspace-object`
	 * :ref:`workspace-create`
	 * :ref:`workspace-getAll`
	 * :ref:`workspace-get`
	 * :ref:`workspace-delete`
	 * :ref:`userWorkspace-getAll`
