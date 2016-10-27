.. Copyright 2016 FUJITSU LIMITED

.. _appliance-configuration:

Managing Configuration
----------------------

When you create your appliance, you can include boot scripts to configure the appliance after provisioning or to configure the appliance to communicate with a DevOps platform for further communication steps.

.. _appliance-configuration-bootscripts:

Adding a Boot Script
~~~~~~~~~~~~~~~~~~~~

You can add boot scripts that will be run either the first time the appliance is booted or every time the machine or virtual machine is started. The boot scripts will be run once all the software and appliance packages are installed, prior to launching the machine. The scripts are run in numeric then alphabetical order. The boot scripts will be executed as root.

.. note:: The firstboots are run before everyboot scripts. Bootscripts named 1_script will be run before a_script, which will be run before script_1, which is run before script_a.

.. warning:: Only .bat files will be executed for Windows. If you want to upload a Powershell script then you should upload it to ``My Software`` and call the execution of the Powershell script from a .bat configuration bootscript.

If you want to install software or packages as part of the installation, you can use My Software to upload overlay files (e.g. /etc/profile.d/xxx.sh). For more information, refer to :ref:`appliance-mysoftware`.

To add a boot script to your appliance:

	1. Select the appliance you want to modify.
	2. From the ``Stack`` page, click on ``Configuration`` in the toolbox.
	3. Select ``Boot Scripts``.
	4. Click on ``new`` or ``upload`` button on the right hand side.

		.. image:: /images/bootscript-add.png

If you are creating a new boot script:

	1. Enter the name.
	2. Select the type: If you select ``first boot``, then the boot script will be launched once the first time the instance is launched.  If you select ``every boot``, then the boot script will be launched every time the instance is rebooted.
	3. Select the boot order.
	4. Enter the contents of the boot script.
	5. Click ``save``.

		.. image:: /images/bootscript-create.png

If you are uploading an existing boot script:

	1. Select the type: If you select ``first boot``, then the boot script will be launched once on the first time the instance is launched.  If you select ``every boot``, then the boot script will be launched every time the instance is rebooted.
	2. Select the boot order.
	3. Click ``choose`` to locate your file and click ``open``.
	4. Click ``save``.


