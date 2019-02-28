.. Copyright 2019 FUJITSU LIMITED

.. _create-custom-os:

Creating Custom OS Profiles with UI
-----------------------------------

UForge provides a set of OS profiles. If you want to create another OS profile, you can create one using UForge's graphical user interface. 

.. warning:: You can delete packages but we do not guarantee that your OS profile will be functional.

To create a new OS profile:

	#. Under the ``Administration`` tab go to the ``Distributions`` tab.
	#. Click on the operating system.  This will provide the current list of profiles this operating system has.

		.. image:: /images/create-os-profile.png

	#. Go to the ``OS Profiles`` tab.
	#. Click on ``add os profile`` in the top right.  

		.. image:: /images/create-os-profile-button.png

	#. Select the profile which will serve as the base for your custom OS profile.
	#. Enter your profile name and click ``create``.
	#. Search for the packages you want to add. Select the package(s) you want to add to your OS profile. The packages that you can add are listed in the top list. The bottom list is the list of packages that are currently part of the profile.

		.. image:: /images/add-os-packages.png


Editing Custom OS Profiles Using UI
-----------------------------------

If you have created a custom OS profile, you can edit it at any time. 

.. note:: You cannot modify a profile provided by UForge. 

.. warning:: You can delete packages but we do not guarantee that your OS profile will be functional.

To edit your OS profile:

	#. Under the ``Administration`` tab, go to ``Distributions``.
	#. Click on the operating system the OS profile is associated with.  
	#. Go to the ``OS Profiles`` tab you will see a list of the current profiles this operating system has.  
	#. To modify the name or description, click on the pencil icon on the right hand side. A pop-up with appear. Modify and click ``ok``.

		.. image:: /images/edit-os-profile-name.png

	#. To modify the packages, click on the OS profile in the list.

		.. image:: /images/edit-os-profile.png

		On this view, for Windows, you can see the distribution your OS profile is based on, its size, the date you created the OS profile in UForge (next to the OS profile name) as well as the last time it was edited.	
	#. Search for the packages you want to add. Select the package(s) you want to add to your OS profile. The packages that you can add are listed in the top list. The bottom list is the list of packages that are currently part of the profile. 

