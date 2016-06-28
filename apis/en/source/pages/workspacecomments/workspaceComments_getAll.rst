.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _workspaceComments-getAll:

workspaceComments_getAll
------------------------

.. function:: GET /orgs/{oid}/workspaces/{wid}/comments

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.3.2``

Retrieves all the comments posted in a workspace. 

A list of :ref:`comment-object` objects are returned. 

You can use a ``search criteria`` to retrieve a subset of these comments.

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

	curl "http://www.example.com/api/orgs/{oid}/workspaces/{wid}/comments" -X GET \
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
