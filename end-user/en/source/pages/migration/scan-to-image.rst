.. Copyright 2019 FUJITSU LIMITED

.. _migration-scan-generate:

Generate a Machine Image from Scan
------------------------------------

Once you have scanned a source system, you can generate a machine image directly from the scan report. When you generate a machine image from a scan, all the information included in the scan report is used in constructing the new machine image (except extra files if you performed a scann without overlay). However, prior to the generation starting, you will be prompted to indicate if you want to change some basic settings of the filesystem, namely the overall disk size and the swap size. You cannot set the swap size to 0. If you want to delete the swap partition, you must do this in ``Advanced Partitioning`` (refer to :ref:`appliance-install-profile-partitioning`.)

.. note:: When generating a machine image, some services are disabled or enabled depending on the target machine image being created (refer to :ref:`service-state`).

To create an image from a scan:

	1. Go to the ``Re-platform`` tab on the ``Migrations`` page.
	2. Click on the scan to view details.
	3. Click on the ``generate`` icon in the top right.

	.. image:: /images/replatform-generate.png

	4. Select the image format you want.
	5. Click ``Generate``. UForge AppCenter generates the machine image:

		- Dependency checking is SKIPPED. This is done intentionally so that UForge does not alter the package list manifest detected during the scan process.
		- Creates the disk ready for installation (using the disk size and partitioning by the user if they have requested a change)
		- Installs the native os packages from the scan report
		- Applies the overlay file from the scan report, if you performed a scan with overlay
		- Applies the low configuration information detected in the scan report (passwords, timezone, keyboard, etc)
		- Applies any specific libraries or configuration depending on the machine image format chosen (e.g for AWS UForge adds the required AWS libraries)

		.. note:: The networking information is treated differently depending on whether the IP address of the workload being migrated is using a static IP address or DHCP.

			- Static IP Addresses: The current information detected during the scan is kept.  During the generation phase, this networking information is also kept. Consequently, the new machine instance has the same static IP address set.
			- Dynamic (DHCP) IP addresses: In this case, the networking information, is reset namely the IP address information is removed during the generation process, and is setup as DHCP.  When the new machine instance is provisioned, the instance sends a request to the local cloud DHCP service to get a new IP address.

	6. You can view the progress and the completed generation on the ``Dashboard`` tab under ``Generations``. You can provision one or more instances from the machine image. Each instance being a near identical workload from the original. For information on the differences after migration, refer to :ref:`source-target-diffs`. 

	.. note:: In the case of a migration from a para-virtualized platform to a non para-virtualized platform, UForge AppCenter injects everything that is needed to make the machine work (the kernel and its tools). Based on the packages discovered on the scan target and on the underlying operating system, UForge AppCenter calculates the most accurate kernel version to inject for your machine.
