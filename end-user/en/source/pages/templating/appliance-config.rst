.. Copyright 2017 FUJITSU LIMITED

.. _appliance-configuration:

Managing Configuration
----------------------

When you create your appliance, you can include boot scripts to configure the appliance after provisioning or to configure the appliance to communicate with a DevOps platform for further communication steps.

.. _appliance-configuration-bootscripts:

Adding a Boot Script
~~~~~~~~~~~~~~~~~~~~

You can add boot scripts that will be run either the first time the appliance is booted or every time the machine or virtual machine is started. The boot scripts will be run once all the software and appliance packages are installed, prior to launching the machine. The scripts are run in numeric and alphabetical order. The boot scripts will be executed as root.

.. note:: The firstboots are run before everyboot scripts. Bootscripts named 1_script will be run before a_script, which will be run script_1, which is run before script_a

.. note:: When a user creates an appliance, the packages are stored locally in the UForge cache repository, which is stored on the DB. Therefore, depending on the number of appliances created and OS used, you may need to adjust the DB size.

If you want to install software or packages as part of the installation, you can use My Software to upload overlay files (e.g. /etc/profile.d/xxx.sh). 
To add a boot script to your appliance:

	1. Select the appliance you want to modify.
	2. From the ``Stack`` page, click on ``Configuration`` in the toolbox.
	3. Select ``Boot Scripts``.
	4. Click on ``new`` or ``upload`` button on the right hand side.

	.. image:: /images/install-profile-add-bootscript.jpg

If you are creating a new boot script:

	1. Enter the name.
	2. Select the type: If you select ``first boot``, then the boot script will be launched once on the first time the instance is launched.  If you select ``every boot``, then the boot script will be launched every time the instance ir rebooted.
	3. Select the boot order.
	4. Enter the contents of the boot script.
	5. Click ``save``.

	.. image:: /images/install-profile-create-bootscript.jpg

If you are uploading an existing boot script:

	1. Select the type: If you select ``first boot``, then the boot script will be launched once on the first time the instance is launched.  If you select ``every boot``, then the boot script will be launched every time the instance ir rebooted.
	2. Select the boot order.
	3. Click ``choose`` to locate your file and click ``open``.
	4. Click ``save``.

.. _appliance-configuration-studio:

Adding a UForge Studio Package
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

UForge Studio allows you to fully automate the post-installation configuration of multi-tier software solutions. You can use Studio to model your configuration scenarios, then include these packages directly into your appliances, making them self-deployable out of the box.

To add your UForge Studio packages to an appliance:

	1. Select the appliance you want to modify.
	2. From the ``Stack`` page, click on ``Configuration`` in the toolbox.
	3. Select ``UForge Studio``.
	4. Click ``upload``.
	5. Browse for your UForge Studio package and click ``open``.
	6. Click ``add license`` to add a license (optional).
	7. Click ``save``.


