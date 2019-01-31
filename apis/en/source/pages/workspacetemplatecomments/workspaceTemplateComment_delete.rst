.. Copyright FUJITSU LIMITED 2016-2019

.. _workspaceTemplateComment-delete:

workspaceTemplateComment_delete
-------------------------------

.. function:: DELETE /orgs/{oid}/workspaces/{wid}/templates/{tid}/comments/{cid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.3.2``

Removes a comment from a shared appliance template. 

This deletes the comment and all replies under this comment.

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

	curl "https://uforge.example.com/api/orgs/{oid}/workspaces/{wid}/templates/{tid}/comments/{cid}" -X DELETE \
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
