.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _marketplace-share:

Allowing a User to Share to the Marketplace
-------------------------------------------

You can add individual users or groups of users as publishers to the Marketplace. Only users/groups that you have added will be able to publish to the Marketplace.

.. note:: The users that have publish rights and are also part of a user group that has publish rights will be allowed to publish as the group or as themselves.

There are two steps in order to allow a user to share appliances to the Marketplace. You must:

	1. Ensure the user has the entitlement ``marketplace_share`` as part of one of the assigned roles. See details below.
	2. Add the user to the organization publisher list. 

.. _check-marketplace-entitlement:

Ensuring User Has Entitlement to Publish to Marketplace
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To ensure that the user has the entitlement ``marketplace_share`` you can:

	* assign a new role which has the entitlement “marketplace_share” (by default the role ``partner`` has this entitlement).
	* add the entitlement to a role which the user has.

.. note:: Any changes you make to an existing role will also be applied to other users with this role.

To view the roles that are assigned to a user, use the command::

	uforge user role list --account <username> -u $ADMIN -p $PASS

To view the entitlements that are part of a role, use the command::

	uforge user role info --name <rolename> -u $ADMIN -p $PASS

Adding a User as Publisher to the Marketplace
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can add an individual user or group of users as publishers to the Marketplace. Only users/groups that you have added will be able to publish to the Marketplace.

.. note:: The users and groups that you want to allow to publish to Marketplace must have the ``marketplace_share`` entitlement.

To add a user or group as a publishers to the Marketplace, use the command uforge publish add::

	uforge publish add --user $ADMIN --password $PASS --accounts MyGroup userA userB

In the example above, the argument ``--user`` is the account of the administrator. The argument ``--accounts`` lists the user names for the accounts you want to add to the group.

If no organization is provided, then the default organization is used.