.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

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

* ``wid`` (required): 
* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "/orgs/{oid}/workspaces/{wid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`workspacemembers-api-resources`
	 * :ref:`workspacetemplate-api-resources`
	 * :ref:`workspacecomments-api-resources`
	 * :ref:`workspace-object`
	 * :ref:`workspace-create`
	 * :ref:`workspace-getAll`
	 * :ref:`workspace-get`
	 * :ref:`userWorkspace-getAll`
	 * :ref:`userWorkspace-create`
