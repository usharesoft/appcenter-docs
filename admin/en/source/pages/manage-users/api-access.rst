.. Copyright 2016 FUJITSU LIMITED

.. _api-access:

Granting a User API Access
--------------------------

Each user account can be configured to have access to the UForge APIs. This allows the user to automate the creation of appliances.  

To use UForge APIs, an API key pair (public and secret keys) must be used as part of the communication.  When a user account is enabled, an API key pair is created automatically. The administrator may also grant the user to have more than one set of API key pairs. This allows the user to create and manage multiple API key pairs.

To grant API access to a user account you must create a role to which you will assign the entitlement ``api_key_access``.

	1. Create the new role::

		$ uforge role create --name newrole --entitlement api_key_access -u $ADMIN -p $PASS

	2. Assign this new role to the user::

		$ uforge user role add --name new role --account kermit -u $ADMIN -p $PASS

	3. Optionally you can set the number of API keys:

	.. code-block:: shell

		$ uforge user api quota --apimax 5 --account kermit -u $ADMIN -p $PASS
		Getting user [kermit] ...
		Success: User kermit now has an API Key Quota of [5]

To disable API access simply remove the entitlement ``api_key_access``::

	$ uforge user role remove --name newrole --account kermit -u $ADMIN -p $PASS

.. _supervisor-rights:

Granting a User Supervisor Rights
---------------------------------

If you want to allow a user to login to UForge as another user, you must grant the user supervisor rights. To do so, use the entitlement ``supervisor_access``. You can either:

	* add the entitlement to an existing role (note this will give supervisor rights to ALL the users with that role)
	* create a new role with the supervisor access. 

.. warning:: Users with Supervisor Access will be able to log in as ANY of the users in the organization without entering a password. This right should be limited to support or managed services. Users with Supervisor Role needs to respect the privacy of the user data, according to current legislation.

It is probably safer to create a new "supervisor” role and add the supervisor rights, to limit the number of users that can access all the user accounts in the organization. 

	1. To create a new role, refer to :ref:`create-roles`. 

	2. Add this new supervisor role to the user who will be acting as “supervisor”; see :ref:`add-roles`.
	3. If the user is not already an administrator, you will need to promote the user as an administrator of the organization for which supervisor rights are assigned::

		$ uforge user admin promote --account kermit --org MyOrg -u $ADMIN -p $PASS 

	If no organization is provided, then the default organization is used.
	If you prefer to add supervisor access to an existing role (in this case “admin”) run the following command::

		$ uforge role entitlement add --name admin --entitlements supervisor_access -u $ADMIN -p $PASS
