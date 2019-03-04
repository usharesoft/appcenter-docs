.. Copyright FUJITSU LIMITED 2016-2019

.. _workspaceTemplateComment-like:

workspaceTemplateComment_like
-----------------------------

.. function:: POST /orgs/{oid}/workspaces/{wid}/templates/{tid}/comments/{cid}/likes

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Like a comment in a workspace.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``wid`` (required): the id of the :ref:`workspace-object`
* ``oid`` (required): the id of the :ref:`org-object`
* ``tid`` (required): the id of the :ref:`gallerytemplate-object`
* ``cid`` (required): the id of the :ref:`comment-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/workspaces/{wid}/templates/{tid}/comments/{cid}/likes" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`comment-object`
	 * :ref:`workspace-api-resources`
	 * :ref:`workspaceTemplateComment-create`
	 * :ref:`workspaceTemplateComment-delete`
	 * :ref:`workspaceTemplateComment-deleteAll`
	 * :ref:`workspaceTemplateComment-dislike`
	 * :ref:`workspaceTemplateComment-get`
	 * :ref:`workspaceTemplateComment-getAll`
	 * :ref:`workspaceTemplateComment-like`
	 * :ref:`workspaceTemplateComment-reply`
	 * :ref:`workspaceTemplateComment-reportAbuse`
	 * :ref:`workspaceTemplateComment-update`
	 * :ref:`workspacecomments-api-resources`
	 * :ref:`workspacetemplate-api-resources`
