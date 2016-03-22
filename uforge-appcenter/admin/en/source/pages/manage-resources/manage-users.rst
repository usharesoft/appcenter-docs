.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _manage-users:

Managing User Accounts
----------------------

When managing user accounts, the administrator must have administration privileges for the organization where the user account is part of or where the member will be created. 

Creating User Accounts with CLI
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When a user account is created, the account is added to the specified organization. If no organization is specified, the UForge default organization is used.  When creating a user, the administrator must specify a subscription code. This subscription code defines the roles, OSes, formats the user has access to, in addition to any quotas. 

.. note: Since a subscription code is required to create a user, the UForge administrator must first create these subscription profiles, and add the organization administrator (or another user) to the admin list.

To create a user account:

.. code-block:: shell

	# uforge user create --account kermit --code <subscriptionProfileCode> --email kermit@usharesoft.com --url https://uforge.usharesoft.com:443 -u $ADMIN -p $PASS

As no default password is specified, UForge creates a temporary random password for the new user account. An email is automatically sent to the email address assigned to the user account when the account has been successfully created.  The user account is automatically active, allowing the user to sign in and begin using UForge.

The ``create`` command provides a set of optional arguments allowing the administrator to control certain aspects of the account being created. 

Disabling a User Account 
~~~~~~~~~~~~~~~~~~~~~~~~

Once disabled, the user no longer has access to the UForge platform.

To disable a user account:

.. code-block:: shell

	# uforge user disable --account kermit –-url https://uforge.usharesoft.com:443 -u $ADMIN -p $PASS
	Getting user [kermit] ...
	Success: User kermit has been de-activated
