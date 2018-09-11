.. Copyright 2018 FUJITSU LIMITED

.. _migration-scan-linux:

Scanning a Linux Machine
~~~~~~~~~~~~~~~~~~~~~~~~

.. warning:: When scanning a Linux machine, you have to check whether the licenses of OS and software which the source machine contains allow you to use them on the destination server which you are migrating to. For more detail, refer to :ref:`notes-on-licensing`.

To carry out a scan, go to ``Re-platform`` tab on the ``Migrations`` page:

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

	11. A report is sent to UForge AppCenter which can be used for migration. To view the progress, go back to the ``Re-platform`` page.

	.. note:: The duration of the scan depends on: 

		* the power of the machine in the target environment, 
		* the complexity of the target environment OS (number of packages installed), 
		* the network bandwidth between the target environment and UForge. 
	
		Scans of typical simple target environments can last about 5 to 15 minutes. In the case of larger and more complex target environments, together with poorer bandwidth, one can experience durations of up to one hour.

	12. To view the details of a scan, click on the scan and refer to :ref:`migration-view-scan`.
	13. To complete your migration, you will need to generate a machine image and publish it. Refer to :ref:`migration-scan-generate`.

.. note:: Image generation will fail when migrating if the source server has the same LVM volume group name as the UForge server's one. It will fail also if the volume group name set in the Partitioning Table is the same as the name of LVM volume group in UForge server.
