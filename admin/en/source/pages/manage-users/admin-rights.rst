.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _admin-rights:

Granting a User Administrator Rights
------------------------------------

.. note:: The user you set as Administrator will have access to the Admin tab on UForge Portal and have rights to manage the organization. However, an Admin user does not automatically have the right to create users. In order to create new users the user must be part of the Admin list. See :ref:`subscription-administrator`. 

There are two steps in granting a user Administrator privileges; you must: 

	1. Give the user the administrator role. This only indicates that the user CAN be an administrator, but does not specify for which organizations::
		
		uforge user role add --account <username> --roles admin -u $ADMIN -p $PASS

	2. Assign the user as administrator to a specific organization. If no organization is provided, then the default organization is used::

		uforge user admin promote –-account <username> --org <org name> -u $ADMIN -p $PASS
