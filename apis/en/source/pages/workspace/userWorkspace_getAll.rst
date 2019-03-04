.. Copyright FUJITSU LIMITED 2016-2019

.. _userWorkspace-getAll:

userWorkspace_getAll
--------------------

.. function:: GET /users/{uid}/workspaces

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.3.2``

Retrieves all the workspaces a user is a member or administrator of. 

A list of :ref:`workspace-object` objects are returned.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/workspaces" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`userWorkspace-create`
	 * :ref:`workspace-object`
	 * :ref:`workspace-create`
	 * :ref:`workspace-delete`
	 * :ref:`workspace-get`
	 * :ref:`workspace-getAll`
	 * :ref:`workspacecomments-api-resources`
	 * :ref:`workspacemembers-api-resources`
	 * :ref:`workspacetemplate-api-resources`
