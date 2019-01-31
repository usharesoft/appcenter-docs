.. Copyright FUJITSU LIMITED 2016-2019

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

* ``uid`` (required): the user name (login name) of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`workspace-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/workspaces" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:workspace xmlns:ns0="http://www.usharesoft.com/uforge">
		<name>Workspace Example</name>
	</ns0:workspace>


.. seealso::

	 * :ref:`userWorkspace-getAll`
	 * :ref:`workspace-object`
	 * :ref:`workspace-create`
	 * :ref:`workspace-delete`
	 * :ref:`workspace-get`
	 * :ref:`workspace-getAll`
	 * :ref:`workspacecomments-api-resources`
	 * :ref:`workspacemembers-api-resources`
	 * :ref:`workspacetemplate-api-resources`
