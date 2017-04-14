.. Copyright 2017 FUJITSU LIMITED

.. _migration-process-overview:

Migration Process Overview
--------------------------

To migrate a live workload to a new target environment, you first copy the uforge-scan binary to the target environment and launch the binary.  This binary analyzes the live system and sends back a report. You can select two types of scan: scan or scan with overlay. A scan will scan the target environment, but will only return the system packages and configuration known to UForge. A scan with overlay will include an overlay report which details all the extra files, packages or specific configuration. 

.. note:: Scan with overlay is only supported for Linux-based machines.

From the scan, you can then generate a new machine image that is compatible for the target environment.  Once a machine image has been generated, the machine image can then be registered to the cloud environment and used to provision an instance.  This instance will contain the same packages and files as the original running environment.  This is known as “black box” migration.

You can transform a scan to an appliance template.  By doing this, you have the opportunity to change the packages, files or configuration information prior to generating and registering a machine image.  This is known as “white box” migration.

.. warning:: Whitebox migration is not supported for Windows.

The five main steps of migration are as follows:

   1. The live system is "deep scanned", detecting all the files and configuration information.
   2. The scan report and overlay is sent to UForge AppCenter.
   3. A machine image is generated from the scan (black box migration).  You can also import the scan prior to machine image generation to change the content (white box migration).
   4. The machine image is uploaded and registered to the target environment.
   5. The registered machine image (also known as a template in cloud terminology) can be used to provision one or more instances.  These instances have near identical content to the original live system.

   .. image:: /images/migration-process.jpg
