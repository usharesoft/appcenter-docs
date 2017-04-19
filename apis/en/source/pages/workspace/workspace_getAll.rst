.. Copyright 2017 FUJITSU LIMITED

.. _workspace-getAll:

workspace_getAll
----------------

.. function:: GET /orgs/{oid}/workspaces

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.3.2``

Retrieves all the workspace in an organization. 

A list of :ref:`workspace-object` objects are returned. 

You can use a ``search criteria`` to retrieve a subset of these workspaces.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/workspaces" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`workspacemembers-api-resources`
	 * :ref:`workspacetemplate-api-resources`
	 * :ref:`workspacecomments-api-resources`
	 * :ref:`workspace-object`
	 * :ref:`workspace-create`
	 * :ref:`workspace-get`
	 * :ref:`workspace-delete`
	 * :ref:`userWorkspace-getAll`
	 * :ref:`userWorkspace-create`
