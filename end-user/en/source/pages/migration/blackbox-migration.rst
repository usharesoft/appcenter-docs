.. Copyright 2019 FUJITSU LIMITED

.. _migration-process-blackbox:

Blackbox Migration Process
--------------------------

The goal of black box migration is to reproduce a near identical copy of the currently running workload.  However, there will always be small differences between the two workloads after migration is complete, notably some services are disabled or enabled depending on the target machine image being created (refer to :ref:`service-state`).  When scanning a system the following information is detected:

	* all the files and packages on the system (including configuration information). If you have selected a scan without overlay, then extra files and specific configuration information will be detected but will not be included in the report.
	* network settings including all NICs. Note that if the first card is static, it will be changed to DHCP.
	* root and user password (encrypted)
	* timezone
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

.. note:: If you plan to migrate a CentOS 6 instance onto AWS with SELinux enabled, you must setup the SELinux context of the public key on the migrated instance. For more detailed information, refer to `CentOS 6 Release Note <https://wiki.centos.org/Manuals/ReleaseNotes/CentOS6.0>`_. 


.. note:: If you plan to migrate a Windows instance onto `K5 Fujitsu Public Cloud <http://www.fujitsu.com/global/solutions/cloud/k5/>`_, you must also uninstall CloudBase-Init (if installed) before scanning.

	For more detailed information, please refer to `official Fujitsu K5 IaaS Documentation <https://doc.cloud.global.fujitsu.com/lib/iaas/en/k5-iaas-features-handbook.pdf>`_.

.. note:: Currently, publications to Microsoft Azure platform `<https://azure.microsoft.com/en-us/>`_ require to install WALinuxAgent 2.0.18 (for CentOS) or waagent 2.0.16 (for Debian and Ubuntu) which are not compatible with NetworkManager (or network-manager) package. Therefore, if you plan to migrate, you must also do the following before scanning:

	1. Uninstall NetworkManager (if installed).
	2. Uninstall the Microsoft Azure agent, i.e. WALinuxAgent and waagent packages (if installed).

.. warning:: Ubuntu 14.04 migration for Microstoft Azure target platform is not supported by UForge.

When you carry out black box migration (by generating a machine image directly from a scan), the following steps are carried out:

	1. You are prompted to indicate if you want to change the overall disk size.
	2. Choose the machine image format to generate. Further options are provided depending upon the format chosen.
	3. UForge AppCenter generates the machine image:

		- Dependency checking is SKIPPED. This is done intentionally so that UForge does not alter the package list manifest detected during the scan process.
		- Create the disk ready for installation (using the disk size and partitioning by the user if they have requested a change)
		- Install the native os packages from the scan report
		- Apply the overlay file from the scan report, if you performed a scan with overlay
		- Apply the low configuration information detected in the scan report (passwords, timezone, keyboard, etc)
		- Apply any specific libraries or configuration depending on the machine image format chosen (e.g for AWS UForge adds the required AWS libraries)

	4. Register the new machine image to the target environment.
	5. You can provision one or more instances from the machine image. Each instance being a near identical workload from the original.
