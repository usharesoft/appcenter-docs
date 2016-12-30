.. Copyright 2016 FUJITSU LIMITED

.. _create-roles:

Creating and Updating User Roles
--------------------------------

If the pre-defined roles delivered with UForge do not match with the permissions you want to allow users, you can either create a new role or modify an existing one.

To create a new role in the default organization::

	$ uforge role create --name newrole --description “description of new role” -u $ADMIN -p $PASS

By default, this role will be empty (containing no entitlements).  You can then add entitlements to a role by using the command::

	$ uforge role entitlement add --name newrole --entitlements entitlement-name -u $ADMIN -p $PASS

You can also remove an entitlement from a role by using the command::

	$ uforge role entitlement remove --name newrole --entitlements entitlement-name -u $ADMIN -p $PASS

You can add entitlements as part of the creation by using the ``--entitlements`` option in the create command::

	$ uforge role create --name newrole --description “description of new role” --entitlements entitlement-name studio_access -u $ADMIN -p $PASS

.. note:: You cannot modify the “root” role.


Listing Roles Assigned to a User
--------------------------------

To view the roles already assigned to a specific user, run the command::

	$ uforge user role list --account <username> -u $ADMIN -p $PASS


Adding Roles to a Subscription Profile
--------------------------------------

If you want a group of users to have the same role, then you can add it to the subscription profile (refer to :ref:`subscription-profiles`). This means that all the users that are created with this subscription profile will have this role. However, this will apply only to the new users created, unless you use the option ``--allusers``.

.. code-block:: shell

	$ uforge subscription role add --name sub --roles newrole --allusers -u $ADMIN -p $PASS

In the example above ``sub`` is the name of the subscription profile.


.. _add-roles:

Adding a Role to a User
-----------------------

.. note:: Adding a specific role to a user (such as Administrator) is often only the first step in granting specific  rights. You must then specify the entity (for an Administrator this would be the organization) for which the user has the newly assigned rights. See the examples later in this section.

To add a role to a user::

	$ uforge user role add --account <username> --roles newrole -u $ADMIN -p $PASS

To add several roles to the same user::

	$ uforge user role add --account <username> --roles role1 role2 -u $ADMIN -p $PASS

.. _delete-roles:

Deleting a Role from a User
---------------------------

To delete a role from a user::

	$ uforge role delete --account <username> --roles roleA -u $ADMIN -p $PASS

.. note:: If this is the only role assigned to a user, once deleted, the user will no longer have any roles. With no roles the user will only be able to view the UForge account and dashboard.
