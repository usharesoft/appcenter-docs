.. Copyright FUJITSU LIMITED 2016-2019

.. _workspace-delete:

workspace_delete
----------------

.. function:: DELETE /orgs/{oid}/workspaces/{wid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.3.2``

Removes a workspace from an organization. 

.. warning:: all the appliance templates shared in the workspace are also deleted.

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

	curl "https://uforge.example.com/api/orgs/{oid}/workspaces/{wid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`userWorkspace-create`
	 * :ref:`userWorkspace-getAll`
	 * :ref:`workspace-object`
	 * :ref:`workspace-create`
	 * :ref:`workspace-get`
	 * :ref:`workspace-getAll`
	 * :ref:`workspacecomments-api-resources`
	 * :ref:`workspacemembers-api-resources`
	 * :ref:`workspacetemplate-api-resources`
