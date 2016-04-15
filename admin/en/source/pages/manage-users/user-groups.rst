.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _user-groups:

Creating User Groups
--------------------

As an administrator you can create user groups to group users that will have the same publishing rights for Marketplace. For example rather than assign publishing rights to 10 members of a group individually, you can create a user group (“MyGroup”), and assign the publishing rights to the group. The users can then publish to the Marketplace as “MyGroup”.

To create a user group, use the command ``uforge usergrp create``.

For example, run::

	uforge usergrp create --user $ADMIN --password $PASS --email kermit@usharesoft.com --name MyGroup


In the example above, the argument ``--name`` is the  name of the user group you are creating and ``-–usergrpPassword`` is the password for the group administrator.  If you want to add users when you create the group, use the argument ``--accounts``.

Adding Users to a Group
~~~~~~~~~~~~~~~~~~~~~~~

To add users to a group, use the command ``uforge usergrp user add``.
Note the users you want to add must already exist on UForge. To create a user, see :ref:`create-user`. 

For example, run::

	uforge usergrp user add --user $ADMIN --password $PASS --name MyGroup --accounts userA userB userC

In the example above, the argument ``--user`` is the account of the administrator. The argument ``--name`` is the  name of the user group you want to add users to. The argument ``--accounts`` lists the user names for the accounts you want to add to the group.


Listing User Groups
~~~~~~~~~~~~~~~~~~~

To list the groups which a given user is part of, use the command ``uforge usergrp list``::

	uforge usergrp list --user $ADMIN --password $PASS

In the example above, the argument ``--user`` is the account of the user. 

If no organization is provided, then the default organization is used.