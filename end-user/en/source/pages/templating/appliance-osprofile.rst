.. Copyright 2016 FUJITSU LIMITED

.. _appliance-os-profile:

Managing the OS Profile
-----------------------

.. _appliance-os-profile-new:

Adding a new OS Profile
~~~~~~~~~~~~~~~~~~~~~~~

Every appliance must have an OS profile, which contains all the operating system packages for the appliance.  UForge allows you to easily create an OS profile from a set of standard profiles. You can then add specific operating system packages.  

The goal is to only include the operating system packages you require to run your application.  This process is known as JeOS (Just Enough Operating System). By only using the operating system packages you need, not only do you reduce the footprint of the resulting machine image, you also make the machine image easier to maintain (as there are less updates) and (hypothetically) more secure as there will be less unwanted services started.

To add an OS profile to your appliance: 

	1. Double click on the appliance you want to edit.
	2. Go to the ``Stack`` page.
	3. Click on ``OS Profile`` in the toolbox.
	4. From the drop-down menu, select the ``OS profile`` template you wish to use. The operating system packages are added automatically and your appliance revision number is increased.

.. image:: /images/os-profile.jpg

.. _appliance-os-profile-add-pkgs:

Adding Packages to the OS Profile
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You may want to add packages that are provided as part of the operating system distribution. To get a list of all the packages that correspond to your search criteria:
	
	1. Select the appliance to modify and go to the ``Stack`` page.
	2. Click on ``OS Profile`` in the toolbox.
	3. Click on the ``search`` button in the top right hand.
	4. Enter your search string. For example, add ``php`` as a search string to get a list of all the PHP packages provided by CentOS.

	.. image:: /images/search-packages.jpg

	5. You can filter the results by selecting ``case-sensitive`` and/or ``32-bit packages``.
	6. Click ``search``.
	7. You can filter the results further by using the table filter.

	.. image:: /images/filter-package-search.jpg

	8. Select the packages you want to add.
	9. Click the ``save`` button to add the packages to the OS profile.

Once you have added packages to an OS profile, any available updates are tracked by the platform. For more information on package updates, see :ref:`appliance-pkg-updates`.
