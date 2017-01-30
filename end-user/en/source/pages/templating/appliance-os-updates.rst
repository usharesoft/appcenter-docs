.. Copyright 2017 FUJITSU LIMITED

.. _appliance-pkg-updates:

Tracking OS Package Updates
---------------------------

All the OS packages added to the ``OS Profile`` section of the appliance templates are tracked for any updates by UForge AppCenter. Based on a timestamp stored in the appliance template, UForge AppCenter can detect any OS package updates that are available.  Updates are displayed in the user interface for each appliance template.

If you are in grid view:

.. image:: /images/appliance-os-updates.png

If you are in table view, it is listed in the ``Updates`` column:

.. image:: /images/os-updates-list.png

You can then easily update the packages using the UForge GUI. Using this tool, you can also roll-back to previous versions of OS packages.

.. note:: This feature is only available for appliance templates using Linux operating systems.

To update the OS packages:

	1. Select your appliance from your appliance library under the ``Apps`` tab.
	2. Go to the ``Updates`` page.
	3. You can see from the graphic when updates were made and how many are available.

		.. image:: /images/appliance-os-updates.png

	4. You can select current updates (if any) or select to return to a previous version of the OS by moving the cursor on the graph.

	5. Click ``simulate`` to see the changes that will be applied. The changes will be listed at the bottom of the screen. Scroll to view the results.

	6. If you want to apply the changes listed, then click ``update``.

.. note:: The triangle indicates a Milestone. For CentOS, this is the versions (6.1, 6.2 etc). Milestones are customized by the UForge administrator.

.. _windows-update:

Modifying a Windows-based Appliance
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

For Windows-based appliances UForge will indicate the number of updates available, however you cannot use this procedure to update the packages for an existing Windows appliance.

In order to benefit from a newer version of Windows, you will have to:

	1. Create or retrieve a new Golden Image. See your administrator.
	2. Create a new appliance.
	3. You can re-use the MySoftware components contained in the current appliance.
	4. You can download from the current template the boot scripts and save them on your local hard drive. You can then upload them to the new appliance.
	5. You must re-produce the configuration (Install Profile, Configuration).

.. _appliance-pkg-updates-sticky:

Pinning Packages
~~~~~~~~~~~~~~~~

UForge allows you to "pin" certain packages in your appliance (previously refered to a "sticky" package). This means that during image generation, the package version you have pinned is chosen regardless of the current appliance template timestamp for calculating package versions.  All the package dependencies of this package are also calculated.

To pin a specific package:

	1. Select the appliance you want to modify.
	2. Go to the ``Stack`` page.
	3. From the ``OS profile``, click on the ``pinned`` bar in the right hand side of the package info. In the following image, the first package has been pinned and the bar is darker. 

		.. image:: /images/os-profile-pin.png

	4. A pop-up window will list all of the versions of the package available, allowing you to select the version you want to pin.

		.. image:: /images/os-profile-pin-pkg-popup.png

	5. Choose the version of the package you want to pin, then click ``save``.

