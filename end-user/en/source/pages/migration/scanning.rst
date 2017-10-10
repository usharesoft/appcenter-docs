.. Copyright 2017 FUJITSU LIMITED

.. _migration-scan:

Scanning the Source System
--------------------------

The first step in migrating your system is running a scan of the target system. This identifies the meta-data of every file and package that makes up the running workload.

You must have root access on the target system in order to complete the scan, as you will need to copy and run a binary file on the target system.

.. warning:: UForge AppCenter does not support multi-kernels. When scanning a machine with more than one kernel, only the kernel running will be scanned and imported.

When you run a scan of a system, UForge AppCenter will differentiate between “known” data (OS packages and files that are already part of UForge AppCenter repository) and files that are “unknown”. 

.. warning:: Any pre-install or post-install scripts on the system you are about to scan should only use ascii character set. Otherwise UForge AppCenter will return a scan error: ``DB Error – invalid characters``.

Recommendations pre-scan:

	* Custom packages on the live system to be scanned should not contain references to package dependencies as relative path. They should be expressed as absolute paths.
	* If custom packages are installed using ``--nodeps`` flag, the scan process will not detect these packages. When carrying out white box migration, UForge AppCenter will check for these dependencies. If they are custom packages that are not on the live system, the generation will fail. Therefore, it is recommended to provide a custom repository with all the necessary custom packages. Otherwise, they can be added after the scan to the appliance template in ``My software``.

.. _migration-scan-linux:

Scanning a Linux Machine
~~~~~~~~~~~~~~~~~~~~~~~~

.. warning:: When scanning a Linux machine, you have to check whether the licenses of OS and software which the source machine contains allow you to use them on the destination server which you are migrating to. For more detail, refer to :ref:`notes-on-licensing`.


To carry out a scan, go to the ``Migration`` tab:

	1. Click on ``scan`` in the top right.
	2. Enter a name for the scan of the target system you want to migrate.

		.. image:: /images/migration-create-scan2.png

	3. Select ``Linux`` from the drop-down menu.
	4. Leave ``Include overlay`` selected if you want to run a scan with overlay. This will return all the packages, files and configuration information of the source machine.

		.. note:: If you do not include the overlay, all files needed to rebuild packages are still transferred to UForge, including the package configuration files. However, all "extra_files" are excluded from the scan.

	5. If you want to exclude certain directories or files from the scan then click ``add`` and enter the directory path or full pathname of the file.
	6. Click ``Next``. Follow the instructions on the UForge AppCenter GUI.

		.. image:: /images/migration-code.png

	7. Download binary locally by clicking ``Download``.
	8. Copy the binary on the target environment you want to migrate.
	9. Open a terminal window and login to the target environment.
	10. Run the scan command on the running target environment to start a scan of the system you want to migrate. Note the ``-o`` option in the scan command indicates that you will launch a scan with overlay. The binary identifies the packages, files and custom files on the system.

		By default the scan data will be saved in ``/tmp``. You can modify the directory where the data will be saved using the ``-t`` option in order to ensure that there is enough space to save the scan data.

		Use the ``-e`` option if you want to exclude certain files or directories from the scan.

		You can also use API keys to run the command. In this case, in the command you copied, remove the password and enter the API keys using ``-a`` option for the public key and ``-s`` option for the secret key. For example::

		./uforge-scan.[bin/exe] -u <username> -a <public-key> -s <secret-key> -U http://ip:port/ufws -n 'Test_scan'

		.. note:: The ``-n`` option to indicate the scan name is mandatory. If a scan with this name already exists, the scan will be grouped under this name.

	11. A report is sent to UForge AppCenter which can be used for migration. To view the progress, go back to the ``Migration`` tab and click ``ok``.

	.. note:: The duration of the scan depends on: 

		* the power of the machine in the target environment, 
		* the complexity of the target environment OS (number of packages installed), 
		* the network bandwidth between the target environment and UForge. 
	
		Scans of typical simple target environments can last about 5 to 15 minutes. In the case of larger and more complex target environments, together with poorer bandwidth, one can experience durations of up to one hour.

	12. To view the details of a scan, click on the scan and refer to :ref:`migration-view-scan`.

.. note:: Image generation will fail when migrating if the source server has the same LVM volume group name as the UForge server's one. It will fail also if the volume group name set in the Partitioning Table is the same as the name of LVM volume group in UForge server.


.. _migration-scan-windows:

Scanning a Microsoft Windows Machine
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. warning:: When scanning a Microsoft Windows machine, you must acquire Windows licenses in order to handle Windows OS in UForge and confirm usage conditions of cloud provider and virtualization software which you scan and migrate to.

.. note:: It is not possible to scan a Windows "Core" system for all versions: 2008R2, 2012, 2012R2 and 2016.

.. warning:: If the target filesystem is NTFS, the scan is optimized by extracting only "used space" from target disks on the source system. Some applications might hold their data on "free space," which is not used by the operating system. If the source system of the scan has such applications installed, these applications may not work correctly on a machine image generated from the scan. With the other filesystems, such as FAT, ReFS and so on, all the space including "free space" on target disks will be copied by the scan.

.. note:: If you plan to migrate a Windows instance onto `K5 Fujitsu Public Cloud <http://www.fujitsu.com/global/solutions/cloud/k5/>`_, you must also do the following before scanning:

	1. Uninstall VMWare Tools (if installed).
	2. Disable NLA for RDP (Please refer to official Microsoft documentation `Configure Network Level Authentication for Remote Desktop Services Connections <https://technet.microsoft.com/en-us/library/cc732713(v=ws.11).aspx/>`_).
	3. Uninstall CloudBase-Init (if installed).

	For more detailed information, please refer to `official Fujitsu K5 IaaS Documentation <http://www.fujitsu.com/uk/Images/k5-iaas-features-handbook.pdf>`_.

To carry out a scan, go to the ``Migration`` tab:

	#. Click on ``scan`` in the top right.
	#. Enter a name for the scan of the target system you want to migrate.
	#. Select ``Windows`` from the drop-down menu and click next.
	#. Select if you want to use the graphical user interface or the command line. Follow the instructions on the pop-up to download the scan binary.

		.. image:: /images/migration-windows-scan-options2.png

		When you run the ``uforge-scan.exe`` command the ``-n`` option to indicate the scan name is mandatory. If a scan with this name already exists, the scan will be grouped under this name.

		By default the scan data will be saved in ``/tmp``. You can modify the directory where the data will be saved using the ``-t`` option in order to ensure that there is enough space to save the scan data.

		Use the ``-e`` option if you want to exclude certain files or directories from the scan. Use ``-E`` option if you want to exclude a harddisk.

	#. You can then launch the scan. The following image illustrates a windows scan with all of the possible options checked. They are described in the following steps.

		.. image:: /images/migration-scan-windows2.png

	#. Optionally you can use API keys. In this case, check ``Use API keys authentication`` and enter the public and secret key information.

	#. If you want to set up a proxy, check ``Proxy authentication required`` and enter the proxy information.

	#.  Fill in the Scanned Instance Name

		.. note:: Scan name can be mix of alphanumeric characters, spaces and the following special characters `._-` all other characters are not supported at this time.

	#. Optionally you can select ``Use local storage``. This means that the scan will be not be done in streaming but in 2 phases. First the data will be stored on a temporary storage drive during the scan process. This temporary storage can be a local directory or a virtual space on the network. It must be at least half the size of the machine you want to scan.

		.. note:: If you are using local storage you will have to launch a script at the end to upload the archive to UForge AppCenter later.

	#. If you want to exclude certain directories or files from the scan then click ``add`` and enter the directory path or full pathname of the file.

	#. Click ``scan`` to launch the scan. A report is sent to UForge AppCenter which can be used for migration. To view the progress, go back to the ``Migration`` tab and click ``ok``.

	#. To view the details of a scan, click on the scan and refer to :ref:`migration-view-scan`.
