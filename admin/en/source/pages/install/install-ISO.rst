.. Copyright 2017 FUJITSU LIMITED

.. _install-iso:

Installing from an ISO
----------------------

.. note:: The ISO install will be done on /dev/sda. The ``kickstart`` automates the installation of the operating system on the first disk, which must be managed by either a SCSI or SATA controller.

To install UForge from the ISO image:

	1. Attach the ISO to a VM or burn the ISO to a DVD (for installing to a physical machine, note the machine will require a DVD disk drive).
	2. Boot the system from the ISO.
	3. Choose the default menu proposed by the installer.
	4. Choose the keyboard layout you want to use.

	.. image:: /images/install-keyboard-select.png

	5. Set the timezone.

	.. image:: /images/install-timezone-select.png

	6. Set the root linux password.

	.. image:: /images/install-password-set.png

	7. Wait for the install to finish, then reboot the system and detach the ISO from the VM or remove the DVD from the disk drive.

	.. image:: /images/install-reboot.png

	8. Once the system reboots, accepts the EULA license agreement, select the keyboard and timezone.
	
For a multi-node installation, repeat these steps for every physical or VM instance you want to install.  
The installation phase is complete, you are now ready to configure the UForge AppCenter, see :ref:`configure-uforge`.
