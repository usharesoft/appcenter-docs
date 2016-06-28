.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

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

	curl "/orgs/{oid}/workspaces/{wid}/memberships/{mid}" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:membership>
		<role>Collaborator</role>
		<userEmail>example@example.com</userEmail>
	</ns0:membership>


.. seealso::

	 * :ref:`workspace-api-resources`
	 * :ref:`workspace-object`
	 * :ref:`membership-object`
	 * :ref:`workspaceMember-invite`
	 * :ref:`workspaceMember-getAll`
	 * :ref:`workspaceMember-deleteList`
	 * :ref:`workspaceMember-delete`
	 * :ref:`workspaceMember-update`
	 * :ref:`workspaceMember-updateList`
