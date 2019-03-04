.. Copyright FUJITSU LIMITED 2016-2019

.. _workspaceComment-reply:

workspaceComment_reply
----------------------

.. function:: POST /orgs/{oid}/workspaces/{wid}/comments/{cid}/replies

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.3.2``

Create a reply to a comment in a workspace. 

Please refer to :ref:`comment-object` for a complete list of all the ``comment`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``wid`` (required): the id of the :ref:`workspace-object`
* ``oid`` (required): the id of the :ref:`org-object`
* ``cid`` (required): the id of the :ref:`comment-object` to reply to

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`comment-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/workspaces/{wid}/comments/{cid}/replies" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:comment xmlns:ns0="http://www.usharesoft.com/uforge">
		<message>Example Reply</message>
		<type>REPLY</type>
	</ns0:comment>


.. seealso::

	 * :ref:`comment-object`
	 * :ref:`workspace-api-resources`
	 * :ref:`workspaceComment-create`
	 * :ref:`workspaceComment-delete`
	 * :ref:`workspaceComment-deleteAll`
	 * :ref:`workspaceComment-dislike`
	 * :ref:`workspaceComment-get`
	 * :ref:`workspaceComment-like`
	 * :ref:`workspaceComment-reply`
	 * :ref:`workspaceComment-reportAbuse`
	 * :ref:`workspaceComment-update`
	 * :ref:`workspaceComments-getAll`
