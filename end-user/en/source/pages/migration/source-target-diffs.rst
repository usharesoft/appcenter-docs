.. Copyright 2017-2019 FUJITSU LIMITED

.. _source-target-diffs:

Differences between Source and Target Instances
-----------------------------------------------

The goal of migration is to create an "identical" copy of the source system and run it on a new target environment.  The word identical though is slightly misleading, as there are small differences that must be carried out to ensure the migrated system correctly boots and runs on the target environment.  This section highlights these differences.


IP Address and MAC Addresses
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When a live machine is scanned the networking is treated differently depending on whether the IP address is static or DHCP.

	* Static IP Addresses: UForge keeps the information detected during the scan. During the generation phase, this networking information is also kept. Consequently, the new machine instance has the same static IP address set.  If you need to change the static IP address, then you should refer to Advanced Migration procedure. By importing the scan report into an appliance template, you will have access to the ``Install Profile`` allowing you to change NIC settings prior to the generation process.

	* Dynamic (DHCP) IP Addresses: In this case, the operating system resets the networking information at boot time. When the new machine instance is provisioned, the instance will send a request to the local cloud DHCP service to get a new IP address.

Consequently networking configuration files including ``/etc/hosts`` may be different between the source and target systems.


Network Device Name
~~~~~~~~~~~~~~~~~~~

Currently, the network device name is renamed after a migration using ``Lift & Shift``. The new device name will be ``eth0``, regardeless of the name prior to the migration.

.. _generation-libraries-added:

New Libraries Added
~~~~~~~~~~~~~~~~~~~

Depending on the source and target environments, some packages or libraries are added to ensure that the system boots correctly on the target environment:

	* For migrations using ``Re-platform`` (see :ref:`migration-replatform`): UForge injects ``uforge-install-config`` and ``uforge-install-profile`` packages.  These packages provides features provided by templating to prompt users for some additional information during the initial booting of the system (root password, keyboard, timezone etc based on the Install Profile settings) and the execution of any boot scripts saved as part of the appliance template.

	* Para-virtualized Source -> Full Virtualized Target (Linux): UForge injects the ``kernel`` package and its dependent libraries to boot the system.

	* Source -> Azure (Linux): UForge injects the Windows Azure Linux agent ``walinuxagent``

	* Source -> Azure (Windows): UForge injects ``Windows VM Agent.msi``

	* Source -> OpenStack (Linux): UForge injects ``cloud-init`` package


System Clock /etc/adjtime
~~~~~~~~~~~~~~~~~~~~~~~~~

For Linux systems, the ``/etc/adjtime`` might be different between source and target systems.  The  Hardware Clock is usually not very accurate.  However, much of its inaccuracy is completely predictable - it gains or loses the same amount  of time every day.  This is called systematic drift.  The ``/etc/adjtime`` file keeps historical information on the clock's drift.  Changing hardware environments may change the contents of this file when hardware clock is adjusted (in many cases the kernel will automatically adjust the hardware clock periodically).

Contents of /etc/fstab File
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Some differences may arise between the scanned server and the generated template in the contents of the ``/etc/fstab`` file. In particular, lines pertaining to NFS (Network FileSystem) mounts are not kept during a migration, because the machine images resulting from the migration would have to be instanciated on the same network as the source machine, with similar network parameters, which cannot always be the case. This also avoids the situations where the inability to mount an NFS share would prevent the (generated) server from booting.

File System Table (/etc/fstab)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
UForge regenerates the /etc/fstab file during machine image generation.  Hardware and device mappings may differ between source and target environments.  For example, ``/dev/xvda`` could be translated to ``/dev/sda``.

File system options (general, dump and check options) are not supported by UForge.  Consequently during a migration these values will be reset to their system defaults.

Furthermore, a ``cdrom`` mount point is added by UForge to permit some cloud platform tools to work correctly.

.. _service-state:

Service State
~~~~~~~~~~~~~

When generating a machine image from a scan, certain services are disabled or enabled depending on the target machine image being created. The following changes are common to all formats:

	* ``libvirtd`` disabled
	* ``sshd`` enabled
	* rewrite grub configuration and ``initramfs/initrd``

If present, ``NetworkManager`` is enabled, otherwise ``network`` is enabled.
If the user requested a firewall , services ``iptables`` or ``ip6tables`` will be enabled. Otherwise, ``iptables`` or ``ip6tables`` are always disabled.

.. note:: ``NetworkManager`` is the name used by some operating systems which is equivalent to ``network-manager``. The name ``network`` is used by some operating systems which is equivalent to ``networking``.

EC2 AMI Image

	* ``hal`` disabled
	* ``haddaemon`` disabled
	* ``network`` enabled
	* ``ip6tables`` disabled
	* ``iptables`` disabled

OpenStack Image

	* ``hal`` disabled
	* ``haddaemon`` disabled
	* ``network`` enabled
	* ``ip6tables`` disabled
	* ``iptables`` disabled

Microsoft Azure Image

	* ``network`` enabled


Red Hat vs CentOS Packages
~~~~~~~~~~~~~~~~~~~~~~~~~~

In addition to the above, there are other minor differences between source and target instances after migration. If CentOS packages have been installed on a Red Hat server, with the same functionality and the same version number as equivalent existing Red Hat packages, then after migration, these CentOS packages will be replaced by their Red Hat counterparts, because the vendor information present in RPM packages is not accounted for during migration: only the package name and version number are.

.. warning:: Installing non-Red Hat packages on a Red Hat server, or replacing Red Hat packages by CentOS packages, is strongly discouraged, because it voids the warranty. Red Hat can refuse support requests on a modified machine.


GRUB2
~~~~~

GRUB2 is always re-installed when migrating a Linux system. Therefore, some files in the folder ``/boot/grub2`` might be different between source and target.
This is especially true for ``/boot/grub2/i386-pc/core.img`` since UForge installs GRUB2, regardless of the source machine configuration, with the following modules: ``biosdisk linux boot part_msdos lvm ext2 gettext xfs``.
