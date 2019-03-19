.. Copyright FUJITSU LIMITED 2016-2019

.. _workspaceTemplateComment-create:

workspaceTemplateComment_create
-------------------------------

.. function:: POST /orgs/{oid}/workspaces/{wid}/templates/{tid}/comments

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.3.2``

Posts a comment to a shared appliance template in a workspace. 

Please refer to :ref:`comment-object` for a complete list of all the ``comment`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``wid`` (required): the id of the :ref:`workspace-object`
* ``oid`` (required): the id of the :ref:`org-object`
* ``tid`` (required): the id of the :ref:`gallerytemplate-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`comment-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/workspaces/{wid}/templates/{tid}/comments" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:comment xmlns:ns0="http://www.usharesoft.com/uforge">
		<message>Comment Example</message>
		<type>QUESTION</type>
	</ns0:comment>


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
