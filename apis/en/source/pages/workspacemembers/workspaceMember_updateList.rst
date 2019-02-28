.. Copyright FUJITSU LIMITED 2016-2019

.. _workspaceMember-updateList:

workspaceMember_updateList
--------------------------

.. function:: PUT /orgs/{oid}/workspaces/{wid}/memberships

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.3.2``

Updates the membership roles of one or more users in a workspace.

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

	curl "https://uforge.example.com/api/orgs/{oid}/workspaces/{wid}/memberships" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:memberships xmlns:ns0="http://www.usharesoft.com/uforge">
		<membership>
			<role>Collaborator</role>
			<userEmail>example@example.com</userEmail>
		</membership>
		<membership>
			<role>Administrator</role>
			<userEmail>example2@example.com</userEmail>
		</membership>
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
