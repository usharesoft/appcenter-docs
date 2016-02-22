.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

Blackbox Migration Process
--------------------------

The goal of black box migration is to reproduce a near identical copy of the currently running workload.  However, there will always be small differences between the two workloads after migration is complete.  When scanning a system the following information is detected:

	* all the files and packages on the system (including configuration information)
	* network settings including all NICs 
	* root and user password (encrypted)
	* timezone
	* keyboard settings
	* kernel parameters
	* users and groups
	* ssh keys
	* filesystem layout (partitioning)
	* SELinux settings (for Linux only)

When you generate a machine image from the scan, all the information detected by the scan report is used in constructing the new machine image.  However, prior to the generation starting, you will be prompted if you wish to change some basic settings of the filesystem, namely the overall disk size and the swap size. 

.. warning:: Note: If the IP address of the live system being scanned has a static IP address, then this IP address is preserved.  Namely when the machine is migrated, the new instance has the same IP address as the original machine.  In the case where the machine being scanned uses DHCP, then DHCP will be used for the migrated instance also.  In this case the target environment must provide a DHCP service for an IP address to be assigned. If you wish to migrate a workload that has a static IP address, and you wish to reset the IP address or use DHCP then you should use white box migration.

When you carry out black box migration (by generating a machine image directly from a scan), the following steps are carried out:

	1. You are prompted if you wish to change the overall disk size.
	2. You choose the machine image format to generate.  Further options are provided depending upon the format chosen.
	3. UForge AppCenter generates the machine image:
		- Dependency checking is SKIPPED.  This is done intentionally so that UForge does not alter the package list manifest detected during the scan process.
		- Create the disk ready for installation (using the disk size and partitioning by the user if they have requested a change)
		- Install the native os packages from the scan report
		- Apply the overlay file from the scan report
		- Apply the low configuration information detected in the scan report (passwords, timezone, keyboard, etc)
		- Apply any specific libraries or configuration depending on the machine image format chosen (e.g for AWS we add the required AWS libraries)
	4. You register the new machine image to the target environment.
	5. You can provision one or more instances from the machine image.  Each instance being a near identical workload from the original.

