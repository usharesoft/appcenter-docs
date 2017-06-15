.. Copyright 2017 FUJITSU LIMITED

.. _create-custom-os:

Creating Custom OS Profiles
---------------------------

UForge provides a set of OS profiles. If you want to create another OS profile, you can create one using UForge's graphical user interface. 

.. warning:: You can delete packages but we do not guarantee that your OS profile will be functional.

To create a new OS profile:

	1. Under the ``Administration`` tab, click ``OS Profiles``.
	2. If you are an administrator to more than one organization, then you can choose the organization to administer from the drop-down menu.
	3. Double-click on the operating system you want to administer.  This will provide the current list of profiles this operating system has.  
	4. Select the profile which will serve as the base for your custom OS profile and click create.

		.. image:: /images/create-os-profile.png

	5. Enter your profile name and click create.
	6. Enter a description (mandatory).
	7. Select the package(s) you want to add to your OS profile and click ``save``. You can search for the package you want to add. The packages that you can add are listed in the top list. The bottom list is the list of packages that are currently part of the profile.
	8. Click ``Save``.

Editing Custom OS Profiles
--------------------------

If you have created a custom OS profile, you can edit it at any time. 

.. note:: You cannot modify a profile provided by UForge. 

.. warning:: You can delete packages but we do not guarantee that your OS profile will be functional.

To edit your OS profile:

	1. Under the ``Administration`` tab, click ``OS Profiles``.
	2. If you are an administrator to more than one organization, then you can choose the organization to administer from the drop-down menu.
	3. Click on the operating system you want to administer.  This will provide the current list of profiles this operating system has.  
	4. Click on the profile you want to edit.

		.. image:: /images/edit-os-profile.png

		On this view, for Windows, you can see the distribution your OS profile is based on, the date you created the OS profile in UForge (next to the OS profile name) as well as the last time it was edited.	

	5. You can edit the name and description from the Overview page.
	6. To modify the packages included in your profile, click OS Packages. The packages that you can add are listed in the top list. The bottom list is the list of packages that are currently part of the profile. Select the package(s) you want to add or remove to your OS profile and click ``save``. You can search for the package you want to add. 
	7. Click ``Save``.
