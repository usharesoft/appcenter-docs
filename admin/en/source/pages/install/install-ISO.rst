.. Copyright 2016 FUJITSU LIMITED

.. _install-iso:

Installing from an ISO
----------------------

To install UForge from the ISO image:

	1. Attach the ISO to a VM or burn the ISO to a DVD (for installing to a physical machine, note the machine will require to have a DVD disk drive).

	2. Boot the system from the ISO.

	3. Force eth0. Press the 'e' key (during boot) to edit grub. Add to the end of the line: biosdevname=0

	4. Choose the default menu proposed by the installer.

	5. Choose the keyboard layout you want to use.

	6. Set the root linux password.

	7. Set the timezone.

	8. Customize the partitioning table layout.  Below is a typical layout using logical volumes, however, you may create other partitioning tables.  

		a) First choose ``Create Custom Layout``

		b) Click ``Create`` to create a boot partition: name ``/boot`` type ``ext4``, 512MB and choose the option “Force to be a primary partition”

		c) Click ``Create`` to create a swap partition: type “swap”, 1024MB and choose the option “Force to be a primary partition”

		d) Create a LVM physical volume.  Click ``Create`` and ``LVM Physical Volume``. Choose the options to use the rest of the space and "Force to be a primary partition"

		e) Create a ``LVM Volume Group``. Click ``Create`` and ``LVM Volume Group``. Once created choose the LVM physical volume created in step (d) and choose a Volume Group Name, for example "root_vg". Then select ``Add``. Choose Mount Point "/" and name the Logical Volume Name, for example "root_lv" and click ``Ok``.

		f) To create the partition table, click ``Next``.

	9. Wait for the install to finish, then reboot the system and detach the ISO from the VM or remove the DVD from the disk drive.

	10. Once the system reboots, accepts the EULA license agreement.
	
For a multi-node installation, repeat these steps for every physical or VM instance you wish to install.  
The installation phase is complete, you are now ready to configure the UForge platform, see :ref:`configure-uforge`.
