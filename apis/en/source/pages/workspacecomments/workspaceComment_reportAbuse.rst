.. Copyright 2017 FUJITSU LIMITED

.. _workspaceComment-reportAbuse:

workspaceComment_reportAbuse
----------------------------

.. function:: POST /orgs/{oid}/workspaces/{wid}/comments/{cid}/abuses

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.3.2``

Report a comment is abusive. ..note:: This does not change or remove the message contents of a comment, but notifies the platform administrators to moderate the comment

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``wid`` (required): the id of the :ref:`workspace-object`
* ``oid`` (required): the id of the :ref:`org-object`
* ``cid`` (required): the id of the :ref:`comment-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/workspaces/{wid}/comments/{cid}/abuses" -X POST \
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
