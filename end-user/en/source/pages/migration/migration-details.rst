.. Copyright 2018 FUJITSU LIMITED

.. _migration-process-details:

Migrating Using Re-platform
----------------------------

The entire migration process using ``Re-platform`` (previously referred to as ``scan``) has 5 main steps:

	1. Scan the source machine. You can select two types of scan: ``scan`` or ``scan with overlay``. A ``scan`` will scan the target environment, but will only return the system packages and configuration known to UForge. A ``scan with overlay`` will include an overlay report which details all the extra files, packages or specific configuration. 

		.. note:: Scan with overlay is only supported for Linux-based machines.

	2. Report the scan results to UForge AppCenter, where the platform analyzes the report. The scan differentiates between known packages and extra files. This report is transferred via HTTPS to UForge AppCenter.
	3. The results are used to build an archive. The extra files are only included in the archive if the user is performing a scan with overlay. The archive is sent back to the platform.
	4. The archive is uncompressed, and the information is stored in the database as a ``Scan``. 
	5. You can use the scan to generate machine images or imported to create a new appliance template. The generated machine image can then be published to the target environment and instances can be provisioned.

.. note:: When generating a machine image from an appliance template, package dependencies are calculated using the list of packages in the OS Profile. Any missing packages from the OS Profile are added prior to generating the machine image.  


For detailed procedures on migration using ``Re-platform`` refer to the following sections:

	* :ref:`migration-scan-linux`
	* :ref:`migration-scan-windows`
