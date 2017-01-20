.. Copyright 2017 FUJITSU LIMITED

.. _migration-process-details:

Migration Process In Detail
---------------------------

The entire migration process has 5 main steps.  These are:

	1. Scan the source machine
	2. Report the scan results to UForge AppCenter, where the platform analyzes the report. The results of this analysis are sent back to the source machine.
	3. The results are used to build an "overlay" archive. This overlay is sent back to the platform.
	4. The overlay archive is uncompressed, and the information is stored in the database as a ``Scan``.
	5. The scan can be used to generate machine images (black box migration) or imported to create a new appliance template (white box migration). The generated machine image can then be published to the target environment and instances can be provisioned.

.. _migration-process-scan-source:

Scanning the Source Machine
~~~~~~~~~~~~~~~~~~~~~~~~~~~

On the scan target, the ``uforge-scan`` binary is copied and launched as root to analyze the entire system.  The scan carries out the following phases:

	1. ``uforge-scan`` tests the connection to UForge server with the information provided by the user in the command line.
	2. ``uforge-scan`` checks the basic information of the machine (Operating System, architecture) and the installation parameters (partitioning, timezone, keyboard, etc.).
	3. Analysis of the operating system native packages installed on the system. The ``uforge-scan`` binary checks which packages have been installed, the state of the files in these packages etc.  The scan process registers all the metadata (rights, user and groups, checksums).
	4. Analysis of the files that are not part of any operating system native packages. The ``uforge-scan`` binary registers all the metadata (rights, user and groups, checksums).

.. _migration-process-analysis:

Analysis of Report
~~~~~~~~~~~~~~~~~~

A report is created by the ``uforge-scan`` binary based on all the information discovered. This report is transferred via HTTPS to UForge AppCenter.

UForge AppCenter stores all the report information. This data is then processed to identify what information is missing by UForge AppCenter to rebuild the source machine.  The processing includes:

	* which operating system native packages UForge AppCenter does not have in its repository or in an incremental scan.
	* which files from operating system native packages have been modified compared to the official native packages in the UForge AppCenter repositories.
	* which files that are not part of any OS native packages and are not in any incremental scan of the same machine.

The results of this analysis are then sent via HTTPS back to the ``uforge-scan`` binary on the source machine.  This is basically all the information that UForge AppCenter does not have already based on the initial report received.

.. _migration-process-overlay:

Build the Overlay Archive
~~~~~~~~~~~~~~~~~~~~~~~~~

The ``uforge-scan`` binary retrieves the analysis results from UForge AppCenter. These results include a list of all the packages and files UForge requires.  The ``uforge-scan`` binary builds an overlay archive of all these packages and files.

The overlay is all the things that are missing compared to a known state (a previous scan of a machine or the operating system native packages). This overlay is a standard tar archive. Once created, it is uploaded via HTTPS to the UForge AppCenter.

The overlay is not built on the scan target but it is stream uploaded (faster and does not need any space on the scan target machine).

At this stage in the process, the ``uforge-scan`` binary has finished its job and no further communication between the scanned machine and UForge AppCenter is required. For this reason, the ``uforge-scan`` binary exits. 

.. note:: No temporary files related to overlay remain on the scan target. 

.. _migration-process-extract:

Overlay Extraction
~~~~~~~~~~~~~~~~~~

UForge AppCenter retrieves and extracts the overlay sent by the uforge-scan binary.  It then recreates all the necessary OS native packages that are not present in any of the package repositories known by UForge AppCenter.
The analysis and overlay processes are now finished. All the scan metadata remain in UForge AppCenter until the scan gets deleted.

You can now carry out a black box or a white box migration.  For black box migration, you generate a new machine image from the scan.  For white box migration, you must first import the scan as an appliance template.

.. _migration-process-generate:

Generate an Image (Black Box Migration)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

At this stage, the scan report is used to generate a new machine image.  The generation tools:

	1. Returns all the packages discovered on the scan target and installs them.
	2. Takes the overlay and applies it on top of the built system.
	3. Tunes the machine for the target environment.  This is specific to the machine image format chosen.  This includes injecting extra libraries and packages required by the target environment.
	4. The networking information is treated differently depending on whether the IP address of the workload being migrated is using a static IP address or DHCP.

		- Static IP Addresses: The current information detected during the scan is kept.  During the generation phase, this networking information is also kept. Consequently, the new machine instance has the same static IP address set.

		- Dynamic (DHCP) IP addresses: In this case, the networking information, is reset namely the IP address information is removed during the generation process, and is setup as DHCP.  When the new machine instance is provisioned, the instance sends a request to the local cloud DHCP service to get a new IP address.

In the case of a migration from a para-virtualized platform to a non para-virtualized platform, UForge AppCenter injects everything that is needed to make the machine work (the kernel and its tools). Based on the packages discovered on the scan target and on the underlying operating system, UForge AppCenter calculates the most accurate kernel version to inject for your machine.

Once the image is generated, it is possible to push it to a remote environment. The image is then ready to be launched in the new environment and the migration is finished.

.. _migration-process-import:

Import to an Appliance Template (Whitebox Migration)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

At this stage, the scan is used to create a new appliance template.  This allows you to change and modify the contents of the machine that has been scanned.

The process of importing:

	1. Creates a template.
	2. Creates an ``OS Profile`` and injects all the native packages.
	3. Injects the overlay as a ``My Software`` component and is added to the appliance template.
	4. Sets the scanned installation configuration information in the ``Install Profile``.

It is then completely detached from the scan and you can do exactly the same things as with any other template.

If you generate an image from this template, it will go through the same steps as a standard template generation:

	1. Checks all the dependencies.
	2. Installs all the packages.
	3. Installs all the my software components.
	4. Tunes the machine for the target environment.  This is specific to the machine image format chosen.  This includes injecting extra libraries and packages required by the target environment.

Once the image is generated, it is possible to push it to a remote environment. The image is then ready to be launched in the new environment and the migration is finished.
