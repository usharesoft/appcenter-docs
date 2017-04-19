.. Copyright 2017 FUJITSU LIMITED

.. _workspaceComment-deleteAll:

workspaceComment_deleteAll
--------------------------

.. function:: DELETE /orgs/{oid}/workspaces/{wid}/comments

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.3.2``

Removes all the comments for a workspace.

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

	curl "https://uforge.example.com/api/orgs/{oid}/workspaces/{wid}/comments" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`workspace-api-resources`
	 * :ref:`comment-object`
	 * :ref:`workspaceComment-create`
	 * :ref:`workspaceComment-reply`
	 * :ref:`workspaceComments-getAll`
	 * :ref:`workspaceComment-get`
	 * :ref:`workspaceComment-update`
	 * :ref:`workspaceComment-delete`
	 * :ref:`workspaceComment-deleteAll`
	 * :ref:`workspaceComment-reportAbuse`
	 * :ref:`workspaceComment-like`
	 * :ref:`workspaceComment-dislike`
