.. Copyright FUJITSU LIMITED 2016-2019

.. _workspaceMember-deleteList:

workspaceMember_deleteList
--------------------------

.. function:: DELETE /orgs/{oid}/workspaces/{wid}/memberships

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.3.2``

Removes one or more users as members of a workspace. 

The list of users can be a list of emails or login names.  This is specified as a set of ``query parameters``.

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

	curl "https://uforge.example.com/api/orgs/{oid}/workspaces/{wid}/memberships" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`membership-object`
	 * :ref:`workspace-api-resources`
	 * :ref:`workspace-object`
	 * :ref:`workspaceMember-delete`
	 * :ref:`workspaceMember-deleteList`
	 * :ref:`workspaceMember-getAll`
	 * :ref:`workspaceMember-invite`
	 * :ref:`workspaceMember-update`
	 * :ref:`workspaceMember-updateList`
