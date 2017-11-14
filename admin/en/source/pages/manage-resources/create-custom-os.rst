.. Copyright 2017 FUJITSU LIMITED

.. _create-custom-os:

Creating Custom OS Profiles
---------------------------

UForge provides a set of OS profiles. If you want to create another OS profile, you can create one using UForge's graphical user interface. 

.. warning:: You can delete packages but we do not guarantee that your OS profile will be functional.

To create a new OS profile:

	1. Under the ``Administration`` tab, click ``OS Profiles``.
	2. Click on the operating system you want to administer.  This will provide the current list of profiles this operating system has.  
	3. Click on ``add os profile``, select one of the existing profiles, which will serve as the base for your custom OS profile.
	4. Enter your profile name and click create.
	5. Enter a description (mandatory).
	6. Select the package(s) you want to add to your OS profile and click ``save``. You can search for the package you want to add. The packages that you can add are listed in the top list. The bottom list is the list of packages that are currently part of the profile.
	7. Click ``Save``.

Editing Custom OS Profiles
--------------------------

If you have created a custom OS profile, you can edit it at any time. 

.. note:: You cannot modify a profile provided by UForge. 

.. warning:: You can delete packages but we do not guarantee that your OS profile will be functional.

To edit your OS profile:

	1. Under the ``Administration`` tab, click ``OS Profiles``.
	2. Click on the operating system you want to administer.  This will provide the current list of profiles this operating system has.  
	3. Click on the profile you want to edit.

		.. image:: /images/edit-os-profile.png

		On this view, for Windows, you can see the distribution your OS profile is based on, its size, the date you created the OS profile in UForge (next to the OS profile name) as well as the last time it was edited.	

	4. You can edit the name and description from the Overview page.
	5. To modify the packages included in your profile, click OS Packages. The packages that you can add are listed in the top list. The bottom list is the list of packages that are currently part of the profile. Select the package(s) you want to add or remove to your OS profile and click ``save``. You can search for the package you want to add. 
	6. Click ``Save``.
