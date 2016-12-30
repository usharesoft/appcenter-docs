.. Copyright 2016 FUJITSU LIMITED

.. _migration-scan-import:

Create an Appliance Template
----------------------------

You can create an appliance template from a scan. Once you create an appliance template packages and files that are known will be listed under ``OS profile``, while "unknown" packages and files will be listed under ``MySoftware``.

.. warning:: This is only supported for Linux based source instances.

To create an appliance template from a scan:

From the Migration tab:
	1. Go to the ``Migration`` tab > ``My Scans``.
	2. Select the ``import`` button (downward arrow) to create an appliance template from the scan.

	.. image:: /images/scan-import.png

	3. Enter the appliance name and version.
	4. Click ``import``.


You can now generate a machine image and share it, as you would any other appliance template.

More importantly you can now change the contents of the original scanned system.  If you go to the ``VM Builder`` tab, the new appliance template will be listed in the ``imported templates`` section.  Double-click on it to view the details or modify it.

.. _migration-scan-appliance-config-console:

Changing a Configuration with "No-Console" Features
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This is typically the case when migrating to Azure.  Azure does not have any console facility today during first boot of the instance.  When you migrate a workload in black box, no install type questions are asked on first boot.  This is due to:

	* root password is copied
	* SSH keys are copied
	* partitioning table is preserved
	* keyboard is preserved
	* timezone is preserved

Access to the machine would typically be done via SSH.

White box migration provides more flexibility.  As soon as you import a scan, which effectively creates an appliance template, you will have access to the Install Profile.  This allows you to reset and change many of the "installation"/first boot parameters including prompting the end user to provide the information (for example: ask the end user to set the root password).  Any prompt to the end user is normally displayed in the console.  However if the user logs into the machine for the first time via SSH, these prompts are displayed in the SSH terminal and not the console.

.. warning:: If you decide to prompt the user for the root password, then an SSH key mechanism must already be determined (private key owned by the user and public key set in the Install Profile).  Otherwise the user will be locked out of the system with no way to SSH into the machine as no password has been set yet.

.. _migration-scan-appliance-config:

Changing Configuration Information
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you want to modify configuration information of a scanned system, there are several solutions:

	1. Using pre-install and post-install scripts
	2. Using boot scripts
	3. Integrate with a Configuration Management platform

In each case, you must import the scan as an appliance template (white box migration).

**Solution #1**: Using pre-install and post-install scripts in the package mechanism:  RPM and DEB package mechanism allows you to register scripts that are executed at various moments during the installation of the package.  By packaging your middleware or application binaries as a native package you can register such scripts.  These scripts are automatically taken into account as part of the machine image generation process.  These packages can be added into the appliance template – either in a custom repository known by UForge AppCenter (in this case the packages are displayed as part of the repository and are added in OS Profile) or as part of a Project or My Software component.

**Solution #2**: Using boot scripts.  UForge AppCenter allows you to add boot scripts in the appliance template.  These boot scripts are executed the first time the migrated instance is provisioned.  Boot scripts can also be registered to be run every time the instance is rebooted.  

**Solution #3**: Integrate with a Configuration Management platform:  There are many 3rd party platforms including Puppet, Chef, Ansible and Saltstack that can be used to configure middleware and application layers.  Once a system has been migrated or a machine image generated from an appliance template, such configuration management platforms can be used for package update and configuration.  You may need to include a bootstrapping mechanism to register the instance to the configuration management platform of your choice.  This bootstrapping can be done using boot scripts (see solution #2).

.. _migration-scan-appliance-os-profile:

Adding Security Patches
~~~~~~~~~~~~~~~~~~~~~~~

When a scan is imported as an appliance template all the native packages detected from the scan are compared with the UForge AppCenter package repositories.  UForge AppCenter will immediately inform you whether new package versions are available for your scan report.  Using the “appliance update” feature, a graph is displayed showing you all the available updates and allows the user to update the appliance template to the latest available packages.  Once the appliance template has been updated, the user can then generate the machine image and register the machine image on the target environment.  The migrated instance will have the latest package updates.

Of course this is not the only way to update a migrated system.  The administrator can update the live system using the standard operating system update mechanism. Depending on the operating system this will be yum, apt, yast etc.  The administrator can run this update manually, or add a boot script in the appliance template that carries out the update during first boot.

This allows the administrator to decide to use other configuration management platforms (Puppet, Chef, Ansible, Saltstack, BMC Bladelogic to name a few) to manage such updates.  For some of these configuration platforms though, you will need to add a boot script as part of the appliance template to bootstrap the running instance with the configuration management platform.

.. _migration-scan-appliance-os-version:

Changing the OS Version of Middleware
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Native packages, middleware and application software can be changed or swapped out; and the user can use the ``appliance update`` mechanism to determine if any package updates are available that can be applied prior to generating and migrating the workload.

.. note:: Changing the operating system for example from CentOS to Ubuntu is not supported.

For a list of supported OSes for Migration, see the table in :ref:`uforge-supported-os-formats`.

Major OS versions, for example upgrading from CentOS 5.0 to CentOS 6.0 is not supported automatically, though as we have the complete list of operating system packages from the scan, a new appliance template can be constructed with the new operating system version.  

This process can further be automated by using the command-line tool hammr (see `hammr.io <http://www.hammr.io>`_).  This tool allows you to create identical machine images from a single configuration file (in JSON).  The procedure would be to:

	1. Scan the original system (note the scan process can be launched by hammr too)
	2. Import the scan as an appliance template (this step can be done by hammr)
	3. Export the appliance template using hammr.  This will create an archive including a JSON file of all the meta-data.
	4. Update manually the major version of the operating system in the JSON file.
	5. Attempt to import using the new JSON file.  A new appliance template will be created with the new major operating system.  Note, you may need to iterate on this, if some packages listed in the JSON file are not found (due to potential package renaming).
	6. Once the import is done, re-generate which would effectively migrate the system you scanned but with a major operating system upgrade.

Qualification of any middleware and application software is strongly recommended.

.. _migration-scan-appliance-overlay:

Modifying the Scan Overlay
~~~~~~~~~~~~~~~~~~~~~~~~~~

When you import a scan as an appliance template, the overlay created as part of the scan process is registered as a ``My Software`` component.  This ``My Software`` component is added to the appliance template.  

The ``My Software`` component created from the overlay contains two archives.  The first includes all the native package meta-data changes (permissions, ownership changes) and data changes (due to configuration modifications through the lifetime of the live machine).  The second archive includes all files that are not part of any native package.

To modify a file in this overlay, you need to download, extract, modify and re-upload it to ``MySoftware`` once the changes have been made.
