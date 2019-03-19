.. Copyright FUJITSU LIMITED 2016-2019

.. _workspace-get:

workspace_get
-------------

.. function:: GET /orgs/{oid}/workspaces/{wid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.3.2``

Retrieves the information of a workspace.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``wid`` (required): the id of the :ref:`workspace-object`
* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/workspaces/{wid}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`userWorkspace-create`
	 * :ref:`userWorkspace-getAll`
	 * :ref:`workspace-object`
	 * :ref:`workspace-create`
	 * :ref:`workspace-delete`
	 * :ref:`workspace-getAll`
	 * :ref:`workspacecomments-api-resources`
	 * :ref:`workspacemembers-api-resources`
	 * :ref:`workspacetemplate-api-resources`
