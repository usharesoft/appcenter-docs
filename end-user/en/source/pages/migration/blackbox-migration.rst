.. Copyright 2018 FUJITSU LIMITED

.. _migration-process-blackbox:

Blackbox Migration Process
--------------------------

The goal of black box migration (either using ``Scans`` or ``Migrations``) is to reproduce a near identical copy of the currently running workload.  However, there will always be small differences between the two workloads after migration is complete, notably some services are disabled or enabled depending on the target machine image being created (refer to :ref:`service-state`). For more information on the difference after migration, refer to :ref:`source-target-diffs`. 

If you wish to do a black box migration, you can do so following 2 methods:

	* by running a scan through the ``Scans`` tab
	* by using an automatic process from the ``Migrations`` tab. Refer to :ref:`migration-automatic`.

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

.. warning:: If the IP address of the live system being scanned has a static IP address, then this IP address is preserved, except when migrating a K5 image. For K5 migration, the settings will be changed so that DHCP is used.  In all other cases, when the machine is migrated, the new instance has the same IP address as the original machine.  In the case where the machine being scanned uses DHCP, then DHCP will be used for the migrated instance also.  In this case the target environment must provide a DHCP service for an IP address to be assigned. If you wish to migrate a workload that has a static IP address, and you wish to reset the IP address or use DHCP then you should use white box migration.

.. warning:: Currently, UForge is not able to migrate the Yum repository GPG keys. This means that the user will have to accept the repository GPG key when the user installs or updates a package. The user will have to do this only once per repository.

.. note:: If you plan to migrate a Windows instance onto `K5 Fujitsu Public Cloud <http://www.fujitsu.com/global/solutions/cloud/k5/>`_, you must also do the following before scanning:

	1. Uninstall VMWare Tools (if installed).
	2. Disable NLA for RDP (Please refer to official Microsoft documentation `Configure Network Level Authentication for Remote Desktop Services Connections <https://technet.microsoft.com/en-us/library/cc732713(v=ws.11).aspx/>`_).
	3. Uninstall CloudBase-Init (if installed).

	For more detailed information, refer to `official Fujitsu K5 IaaS Documentation <http://www.fujitsu.com/uk/Images/k5-iaas-features-handbook.pdf>`_.

.. note:: Currently, to publish to Microsoft Azure platform `<https://azure.microsoft.com/en-us/>`_ you must install WALinuxAgent 2.0.18 (for CentOS) or waagent 2.0.16 (for Debian and Ubuntu) which are not compatible with NetworkManager (or network-manager) package. Therefore, if you plan to migrate, you must also do the following before scanning:

	1. Uninstall NetworkManager (if installed).
	2. Uninstall the Microsoft Azure agent, i.e. WALinuxAgent and waagent packages (if installed).

.. warning:: Ubuntu 14.04 migration for Microsoft Azure target platform is not supported by UForge.

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
	5. You can provision one or more instances from the machine image. Each instance being a near identical workload from the original. For information on the difference after migration, refer to :ref:`source-target-diffs`. 
