.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _workspaceTemplateComment-dislike:

workspaceTemplateComment_dislike
--------------------------------

.. function:: DELETE /orgs/{oid}/workspaces/{wid}/templates/{tid}/comments/{cid}/likes

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.6``

Dislike a comment in a workspace.

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

	curl "/orgs/{oid}/workspaces/{wid}/templates/{tid}/comments/{cid}/likes" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`workspace-api-resources`
	 * :ref:`workspacetemplate-api-resources`
	 * :ref:`workspacecomments-api-resources`
	 * :ref:`comment-object`
	 * :ref:`workspaceTemplateComment-create`
	 * :ref:`workspaceTemplateComment-reply`
	 * :ref:`workspaceTemplateComment-getAll`
	 * :ref:`workspaceTemplateComment-get`
	 * :ref:`workspaceTemplateComment-update`
	 * :ref:`workspaceTemplateComment-deleteAll`
	 * :ref:`workspaceTemplateComment-delete`
	 * :ref:`workspaceTemplateComment-reportAbuse`
	 * :ref:`workspaceTemplateComment-like`
	 * :ref:`workspaceTemplateComment-dislike`
