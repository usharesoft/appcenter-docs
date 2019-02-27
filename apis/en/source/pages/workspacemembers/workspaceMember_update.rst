.. Copyright FUJITSU LIMITED 2016-2019

.. _workspaceMember-update:

workspaceMember_update
----------------------

.. function:: PUT /orgs/{oid}/workspaces/{wid}/memberships/{mid}

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.3.2``

Updates the membership role of an user in a workspace.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``wid`` (required): the id of the :ref:`workspace-object`
* ``mid`` (required): the id of the :ref:`membership-object`
* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`membership-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/workspaces/{wid}/memberships/{mid}" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:membership xmlns:ns0="http://www.usharesoft.com/uforge">
		<role>Collaborator</role>
		<userEmail>example@example.com</userEmail>
	</ns0:membership>


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
