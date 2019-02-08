.. Copyright 2016-2019 FUJITSU LIMITED

.. _rbac-usage:

Viewing Default Roles
---------------------

A set of default roles are provided by UForge. To view these default roles, use the command ``uforge role list``:

.. code-block:: shell

	$ uforge role list -u $ADMIN -p $PASS
	Getting all the roles for the default organization ...
	+--------------------------+----------------------------------------------------------------------------------+
	| Name                     | Description                                                                      |
	+--------------------------+----------------------------------------------------------------------------------+
	| admin                    | Provides organization administration rights.  Includes managing the organizations project catalog; os profiles and |
	|                          | user accounts.                                                                   |
	+ Entitlements ------------------+----------------------------------------------------------------------------+
	| org_administrate         | Access to manage the entitlements list available for an organization.            |
	| org_formats_administrate | Access to manage the generation formats available for an organization.           |
	| org_members_administrate | Access to manage user accounts for an organization.                              |
	| org_os_administrate      | Access to manage the operating systems available for an organization.            |
	| org_os_profiles_administrate| Access to manage the os profiles available for an organization.               |
	| org_projects_administrate| Access to manage the project catalog for an organization.                        |
	| user_create              | Access to create user accounts in UForge.                                        |
	+--------------------------+----------------------------------------------------------------------------------+
	Found 15 role(s)
	| apiuser                  | Allows the user to communicate with UForge via the APIs.                         |
	+ Entitlements ------------+----------------------------------------------------------------------------------+
	| api_key_access           | Access to UForge APIs.                                                           |.... rest omitted for clarity

Organization administrators can create and manage roles as well as assign these roles to the members of the organization.  For a list of all the commands possible to manage RBAC, use ``uforge role --help``.

To view the entitlements associated to a role run the command ``uforge role info --name <roleName>``.

.. note:: Adding a specific role to a user (such as Administrator) is often only the first step in granting specific  rights. You must then specify the entity (for an Administrator this would be the organization) for which the user has the newly assigned rights. See the examples later in this section.

.. _list-entitlements:

Listing Entitlements
~~~~~~~~~~~~~~~~~~~~

An entitlement describes the right to perform an action on the UForge platform.  These are pre-defined by UForge.  Entitlements are added to roles to describe the access rights to the various UForge features.

To view all the entitlements provided by UForge, use the command::

	$ uforge entitlement list -u $ADMIN -p $PASS

.. _list-roles:

Listing Roles for an Organization
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To view the available roles for an organization, run the command::

	$ uforge role list --org usharesoft -u $ADMIN -p $PASS

If no organization is provided, then the default organization is used.
