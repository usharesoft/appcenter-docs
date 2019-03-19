.. Copyright FUJITSU LIMITED 2016-2019

.. _workspaceMember-invite:

workspaceMember_invite
----------------------

.. function:: POST /orgs/{oid}/workspaces/{wid}/memberships

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.3.2``

Invites one or more users to become members of a workspace. 

Please refer to :ref:`membership-object` for a complete list of all the ``membership`` attributes. 

You can invite people, based on their UForge login name or email address, though the user must already have an account and its membership to this workspace can't already be in accepted or declined state. 

By default, the invitee will have a ``Collaborator`` role inside the workspace. You can specify a specific role in each Membership instance. Please refer to :ref:`workspaceMember-update` to change the role of a workspace member. 

 An email notification is sent to inform that the user has been invited to a workspace. 

Users invited to the workspace must accept or decline the invitation before doing any action inside the workspace.

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

A :ref:`memberships-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/workspaces/{wid}/memberships" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:memberships xmlns:ns0="http://www.usharesoft.com/uforge">
		<memberships>
			<membership>
				<userEmail>guest@usharesoft.com</userEmail>
			</membership>
		</memberships>
		<msg>Hi, I have created this workspace Workspace Example where we can collaborate and share some of our templates. Please join!</msg>
	</ns0:memberships>


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
