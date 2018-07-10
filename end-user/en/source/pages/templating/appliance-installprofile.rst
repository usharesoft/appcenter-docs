.. Copyright 2018 FUJITSU LIMITED

.. _appliance-install-profile:

Updating the Install Profile
----------------------------

The ``Install Profile`` on the ``Stack`` page allows you to customize the questions asked when the image is booted for the very first time (or during installation for a physical image format). The install profile is mandatory. However, the options you set will differ depending on if your appliance in Linux-based or Windows-based. Please refer to the appropriate section below.

You can also refer to the following sub-sections:

.. toctree::
   :titlesonly:

   appliance-user-groups
   appliance-multinic
   appliance-advanced-partition

Updating a Linux-based Install Profile
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can define the following as part of a Linux-based appliance install profile:

* ``Root User``: The root user password by default is prompted during the first boot of the machine image i.e. ``ask during installation``. However, you can pre-set a root  password. You can enter an SSH key to allow users to login as root. If you select ``Disable root password login via SSH``, root will still be able to login from the console.
* ``Users and Groups`` (optional): you can add operating system users and groups. See :ref:`appliance-install-profile-users-groups` for more information
* ``Network``: You can set the internet settings. The default is ``set automatically``. See :ref:`appliance-multinic`
* ``Security``: You can activate or deactivate the firewall present in the filesystem when launching the appliance (regardless of whether the firewall is iptables or other). Firewall is set to ``Off`` by default. You can also set the SELinux configuration here.
* ``Partitioning``: You can modify the disk and swap size for the automatic set up, select ``ask during install``, or set up ``Advanced Partitioning`` (for several disks). For more information see :ref:`appliance-install-profile-partitioning`. 

	.. note:: If you want to generate a K5 image or an OpenStack image, the appliance partition should contain only 1 disk.

* ``Kernel``. You can add kernel parameters by clicking plus, entering data and click ``save``.
* ``Keyboard``: default is ``ask during installation``. You can choose ``set automatically`` and select the keyboard from the drop down menu.
* ``Licenses``: default is ``accept licenses during installation``.
* ``Time Zone``: default is ``set automatically to London``.
* ``Welcome Message``: You can enter a welcome message.

.. note:: For basic partitioning disk size, you must ensure that the disk is large enough to store all the binaries and files for the appliance template.  For windows based operating systems, it is advised to have a disk size of at least ``14GB`` for core versions, and at least ``20GB`` for full versions.

.. _windows-install-profile:

Updating a Windows-based Install Profile
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can define the following as part of a Windows-based appliance install profile:

* ``Sysprep``: Allows you to indicate that sysprep should be run on first boot. If you do not select to run sysprep, you cannot set an administrator password as ``Administrator`` option will not be visible.
* ``Activation Key``: You can set the Windows Activation Key. If it is not entered in the Install Profile, the default key will be used for a 30-day trial period once the appliance is booted.
* ``Administrator``: To set the administrator password. Can be one of ``Ask during installation``, ``None`` or ``Set automatically``. Note that this option is visible only if you have selected to run sysprep under ``Sysprep`` option.
* ``Network``: You can set the internet settings. The default is ``set automatically``. See :ref:`appliance-multinic`
* ``Partitioning``: You can modify the disk and swap size for the automatic set up, select ``ask during install``, or set up ``Advanced Partitioning`` (for several disks). For more information see :ref:`appliance-install-profile-partitioning-windows`.
* ``Time Zone``: default is ``set automatically to London``.
* ``Welcome Message``: You can enter a welcome message.

	.. image:: /images/install-profile-windowsfp3.png
