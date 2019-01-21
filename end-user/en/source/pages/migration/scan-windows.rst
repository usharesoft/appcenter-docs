.. Copyright 2019 FUJITSU LIMITED


.. _migration-scan-windows:

Scanning a Microsoft Windows Machine
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. warning:: When scanning a Microsoft Windows machine, you must acquire Windows licenses in order to handle Windows OS in UForge and confirm usage conditions of cloud provider and virtualization software which you scan and migrate to.

.. note:: It is not possible to scan a Windows "Core" system for all versions: 2008R2, 2012, 2012R2 and 2016.

.. warning:: Windows Evaluation Editions are not supported for scanning.

.. warning:: If the target filesystem is NTFS, the scan is optimized by extracting only "used space" from target disks on the source system. Some applications might hold their data on "free space," which is not used by the operating system. If the source system of the scan has such applications installed, these applications may not work correctly on a machine image generated from the scan. With the other filesystems, such as FAT, ReFS and so on, all the space including "free space" on target disks will be copied by the scan.

.. warning:: For Windows Server 2008R2, you will need to run a command in ``PowerShell`` on the source machine before scanning ``winrm set winrm/config/service '@{AllowUnencrypted="true"}'``. This command will disable WinRM encryption over HTTP which is not supported by AMP. More information can be found on the Cloudsoft AMP documentation, in section `WinRM Connectivity Diagnostics <https://docs.cloudsoft.io/blueprints/base-blueprints/winrm/client.html#winrm-connectivity-diagnostics>`_.

.. note:: If you plan to migrate a Windows instance onto `K5 Fujitsu Public Cloud <http://www.fujitsu.com/global/services/hybrid-cloud/k5/>`_, you must uninstall CloudBase-Init (if installed) before scanning.

	For more detailed information, please refer to `official Fujitsu K5 IaaS Documentation <http://www.fujitsu.com/uk/Images/k5-iaas-features-handbook.pdf>`_.

To carry out a scan, go to the ``Re-platform`` tab on the ``Migrations`` page:

	#. Click on ``scan`` in the top right.
	#. Enter a name for the scan of the target system you want to migrate.
	#. Select ``Windows`` from the drop-down menu and click next.
	#. Select if you want to use the graphical user interface or the command line. Follow the instructions on the pop-up to download the scan binary.

		.. image:: /images/migration-windows-scan-options2.png

		When you run the ``uforge-scan.exe`` command the ``-n`` option to indicate the scan name is mandatory. If a scan with this name already exists, the scan will be grouped under this name.

		By default the scan data will be saved in ``/tmp``. You can modify the directory where the data will be saved using the ``-t`` option in order to ensure that there is enough space to save the scan data.

		Use the ``-e`` option if you want to exclude certain files or directories from the scan. Use ``-E`` option if you want to exclude a harddisk.

	#. You can then launch the scan. The following image illustrates a Windows scan with all of the possible options checked. They are described in the following steps.

		.. image:: /images/migration-scan-windows2.png

	#. Optionally you can use API keys. In this case, check ``Use API keys authentication`` and enter the public and secret key information.

	#. If you want to set up a proxy, check ``Proxy authentication required`` and enter the proxy information.

	#. Fill in the ``Scanned Instance Name``.

		.. note:: Scan name can be mix of alphanumeric characters, spaces and the following special characters `._-`. All other characters are not supported at this time.

	#. Optionally you can select ``Use local storage``. This means that the scan will be not be done in streaming but in 2 phases. First the data will be stored on a temporary storage drive during the scan process. This temporary storage can be a local directory or a virtual space on the network. It can also be on the same partition that is being scanned (provided there is enough space available). It must be at least half the size of the machine you want to scan.

		.. note:: If you are using local storage, UForge AppCenter will generate a script for you named ``upload_raw_partition_images.bat`` that you will have to launch at the end, to upload the archive to UForge AppCenter once the scan is complete.

	#. If you want to exclude certain partitions from the scan then check the boxes accordingly in the section ``Disks or Partitions to exclude``.

	#. Click ``Scan`` to launch the scan. A report is sent to UForge AppCenter which can be used for migration. To view the progress, go back to the ``Scans`` page.

	#. To view the details of a scan, click on the scan and refer to :ref:`migration-view-scan`.

		.. note:: The log files of uforge-scan.exe on the source Microsoft Windows machine are stored under the following directory: ``%SystemRoot%\System32\LogFiles\UForge``.

	#. To complete your migration, you will need to generate a machine image and publish it. Refer to :ref:`migration-scan-generate`.
