.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _workspaceMember-getAll:

workspaceMember_getAll
----------------------

.. function:: GET /orgs/{oid}/workspaces/{wid}/memberships

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.3.2``

Retrieves all the members of a workspace.  This includes all pending invitations. 

A list of :ref:`membership-object` objects are returned. 

You can use the query parameter ``user`` to search for a particular user that has been invited or member of the workspace.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``None``

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

	curl "http://www.example.com/api/orgs/{oid}/workspaces/{wid}/memberships" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`workspace-api-resources`
	 * :ref:`workspace-object`
	 * :ref:`membership-object`
	 * :ref:`workspaceMember-invite`
	 * :ref:`workspaceMember-getAll`
	 * :ref:`workspaceMember-deleteList`
	 * :ref:`workspaceMember-delete`
	 * :ref:`workspaceMember-update`
	 * :ref:`workspaceMember-updateList`
