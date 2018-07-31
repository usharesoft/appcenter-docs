.. Copyright 2018 FUJITSU LIMITED

.. _create-custom-os:

Creating Custom OS Profiles with UI
-----------------------------------

UForge provides a set of OS profiles. If you want to create another OS profile, you can create one using UForge's graphical user interface. 

.. warning:: You can delete packages but we do not guarantee that your OS profile will be functional.

To create a new OS profile:

	#. Under the ``Administration`` tab go to the ``Distributions`` tab.
	#. Click on the operating system.  This will provide the current list of profiles this operating system has.

		.. image:: /images/create-os-profile.png

	#. Click on ``add os profile`` in the top right.  

		.. image:: /images/create-os-profile-button.png

	#. Select the profile which will serve as the base for your custom OS profile.
	#. Enter your profile name and click ``create``.
	#. Select the package(s) you want to add to your OS profile. You can search for the package you want to add. The packages that you can add are listed in the top list. The bottom list is the list of packages that are currently part of the profile.

		.. image:: /images/add-os-packages.png


Editing Custom OS Profiles Using UI
-----------------------------------

If you have created a custom OS profile, you can edit it at any time. 

.. note:: You cannot modify a profile provided by UForge. 

.. warning:: You can delete packages but we do not guarantee that your OS profile will be functional.

To edit your OS profile:

	1. Under the ``Administration`` tab, go to ``Distributions``.
	2. Click on the operating system you want to administer.  Under the ``OS Profiles`` tab you will see a list of the current profiles this operating system has.  
	3. Click on the OS profile you want to edit.

		.. image:: /images/edit-os-profile.png

		On this view, for Windows, you can see the distribution your OS profile is based on, its size, the date you created the OS profile in UForge (next to the OS profile name) as well as the last time it was edited.	
	4. Select the package(s) you want to add to your OS profile. You can search for the package you want to add. The packages that you can add are listed in the top list. The bottom list is the list of packages that are currently part of the profile. 

