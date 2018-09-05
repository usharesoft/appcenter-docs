.. Copyright 2018 FUJITSU LIMITED

.. _migration-process-blackbox:

Black Box Migration Process
---------------------------

The goal of black box migration (either using ``Re-platform`` or ``Lift & Shift``) is to reproduce a near identical copy of the currently running workload.  However, there will always be small differences between the two workloads after migration is complete, notably some services are disabled or enabled depending on the target machine image being created (refer to :ref:`service-state`). For more information on the differences after migration, refer to :ref:`source-target-diffs`. 

If you wish to do a black box migration, you can do so following 2 methods:

	* by running a scan through the ``Re-platform`` tab
	* by using an automatic process from the ``Lift & Shift`` tab. Refer to :ref:`migration-automatic`.

In both cases, UForge will proceed by scanning the system you want to migrate, and detect the following information:

	* all the files and packages on the system (including configuration information). If you have selected a scan without overlay, then extra files and specific configuration information will be detected but will not be included in the report.
	* network settings including all NICs. Note that if the first card is static, it will be changed to DHCP.
	* root and user password (encrypted)
	* timezone. As part of the generation, UForge will use the same timezone as the original system. UForge creates a symbolic link for ``/etc/localtime`` that point to the timezone set in ``/usr/share/zoneinfo``.
	* keyboard settings
	* kernel parameters
	* users and groups
	* SSH keys
	* filesystem layout (partitioning)
	* SELinux settings (for Linux only). When SELinux is detected on the migrated system, the ``/.autorelabel`` file is added to the file system in order to relabel it on first boot.

.. warning:: The following file types are not included in the scan overlay file:

	* character device
	* block device
	* FIFO (named pipe)
	* socket

When you generate a machine image from the scan, all the information included in the scan report is used in constructing the new machine image (except extra files if you performed a scan without overlay). However, prior to the generation starting, you will be prompted to indicate if you want to change some basic settings of the filesystem, namely the overall disk size and the swap size. You cannot set the swap size to 0. If you want to delete the swap partition, you must do this in ``Advanced Partitioning`` (refer to :ref:`appliance-install-profile-partitioning`).

.. warning:: Currently, UForge is not able to migrate the Yum repository GPG keys. This means that the user will have to accept the repository GPG key when the user installs or updates a package. The user will have to do this only once per repository.

.. note:: If you plan to migrate a CentOS 6 instance onto AWS with SELinux enabled, you must setup the SELinux context of the public key on the migrated instance.

	For more detailed information, refer to `CentOS 6 Release Note <https://wiki.centos.org/Manuals/ReleaseNotes/CentOS6.0/>`_.

.. note:: If you plan to migrate a Windows instance onto `K5 Fujitsu Public Cloud <http://www.fujitsu.com/global/solutions/cloud/k5/>`_, please note the following: 

	- You must uninstall CloudBase-Init (if installed) before scanning.
	- After migration, the Administrator password will be changed randomly in K5. You will need to call K5 APIs to retrieve the password.

	For more detailed information, refer to `FUJITSU Cloud Service K5 IaaS Features Handbook <https://k5-doc.jp-east-1.paas.cloud.global.fujitsu.com/doc/en/iaas/document/k5-iaas-features-handbook.pdf>`_.

.. note:: Currently, to publish to Microsoft Azure platform `<https://azure.microsoft.com/en-us/>`_ you must do the following before scanning:

	1. Unless you are migrating from CentOS7+, uninstall network manager (if installed).
	2. Uninstall the Microsoft Azure agent, i.e. WALinuxAgent and waagent packages (if installed).

When you generate a machine image directly from a scan, the following steps are carried out:

	1. You are prompted to indicate if you want to change the overall disk size.
	2. Choose the machine image format to generate. Further options are provided depending upon the format chosen.
	3. UForge AppCenter generates the machine image:

		- Dependency checking is SKIPPED. This is done intentionally so that UForge does not alter the package list manifest detected during the scan process.
		- Creates the disk ready for installation (using the disk size and partitioning by the user if they have requested a change)
		- Installs the native os packages from the scan report
		- Applies the overlay file from the scan report, if you performed a scan with overlay
		- Applies the low configuration information detected in the scan report (passwords, timezone, keyboard, etc)
		- Applies any specific libraries or configuration depending on the machine image format chosen (e.g for AWS UForge adds the required AWS libraries)

	4. Register the new machine image to the target environment.
	5. You can provision one or more instances from the machine image. Each instance being a near identical workload from the original. For information on the differences after migration, refer to :ref:`source-target-diffs`. 
