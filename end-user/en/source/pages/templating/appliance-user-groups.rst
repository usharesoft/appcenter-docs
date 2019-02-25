.. Copyright 2018-2019 FUJITSU LIMITED


.. _appliance-install-profile-users-groups:

Adding Users and Groups
~~~~~~~~~~~~~~~~~~~~~~~

You can add operating system users and groups to a Linux-based appliance Install Profile. These will be integrated to the appliance template.

.. warning:: The users and groups created in UForge are not linked. If you create a user and list it as part of a specific group, you must then also create the group; otherwise the image generation will fail. 

To add a user to an appliance:

	1. Select the appliance template you want to modify.
	2. From the ``Stack`` page, click on ``Install Profile`` in the toolbox.
	3. Select ``Users and Groups``.
	4. Click the plus symbol next to the ``Users`` table. The ``Create User`` page will be displayed.

		.. image :: /images/install-profile-create-user-fp2.png

	5. Enter a user name.
	6. If you want to manually enter the user ID, deselect ``set the user id automatically`` and enter the ID number.
	7. If you want to manually create the primary group the user is part of, deselect ``automatically create primary group for user`` and enter the group name. 
	8. Click ``create``.

.. warning:: If you create a user and list it as part of a specific group, you must then also create the group; otherwise the image generation will fail. 


To add a group to a Linux-based appliance install profile:

	1. Select the appliance template you want to modify.
	2. From the ``Stack`` page, click on ``Install Profile`` in the toolbox.
	3. Select ``Users and Groups``.
	4. Click the plus symbol next to the ``Groups`` table. The ``Create Group`` page will be displayed.

		.. image:: /images/install-profile-create-group-fp2.png

	5. Enter a group name.
	6. Check if you want this group to be a system group.
	7. If you want to manually enter the group ID, deselect ``Set the group id automatically`` and enter the group ID number.
	8. Click ``create``.
