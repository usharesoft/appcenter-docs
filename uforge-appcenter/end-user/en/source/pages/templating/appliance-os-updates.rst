.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

Tracking OS Package Updates
---------------------------

All the OS packages added to the OS Profile section of the appliance templates are tracked for any updates by UForge AppCenter.  Based on a timestamp stored in the appliance template, UForge AppCenter can detect any OS package updates that are available.  Updates are displayed in the user interface for each appliance template.

.. image:: /images/appliance-os-updates.jpg

You can then easily update the packages using the UForge GUI. Using this tool, you can also roll-back to previous versions of OS packages.

.. note:: This feature is only available for appliance templates using Linux operating systems.

To update the OS packages:

	1. Select your appliance from your appliance library under the ``VM Builder`` tab.
	2. Go to the ``Updates`` page.
	3. You can see from the graphic when updates were made and how many are available.

	.. image:: /images/os-profile-updates.jpg

	4. You can select current updates (if any) or select to return to a previous version of the OS by moving the cursor on the graph.

	5. Click simulate at the bottom to see the changes that will be applied. The changes will be listed in the bottom table. Scroll to view the results.

	.. image:: /images/os-profile-updates-simulate.jpg

	6. If you want to apply the changes listed, then click update.

.. note:: M indicates a Milestone. For Centos, this is the versions (6.1, 6.2 etc). Milestones are customized by the UForge administrator.

Making Packages "Sticky"
~~~~~~~~~~~~~~~~~~~~~~~~

UForge allows you to select certain packages as "sticky". This means that during image generation, this package version is chosen regardless of the current appliance template timestamp for calculating package versions.  All the package dependencies of this package are also calculated.

To make a specific package "sticky":

	1. Select the appliance you want to modify.
	2. Go to the ``Stack`` page.
	3. From the ``OS profile``, click on ``sticky`` in the right hand side of the package info. The ``sticky`` button will only be visible when you scroll over this part the page.

	.. image:: /images/os-profile-sticky-pkg.jpg

	4. A pop-up window will list all of the versions of the package available, allowing you to select the version you want.

	.. image:: /images/os-profile-sticky-pkg-popup.jpg

	5. Choose the version of the package you would like, then click ``save``.






