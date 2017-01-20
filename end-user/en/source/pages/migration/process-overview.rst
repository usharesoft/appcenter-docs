.. Copyright 2017 FUJITSU LIMITED

.. _migration-process-overview:

Migration Process Overview
--------------------------

To migrate a live workload to a new target environment, you first copy the uforge-scan binary to the target environment and launch the binary.  This binary analyzes the live system and sends back a report, known as a scan back to UForge AppCenter.  You can then generate a new machine image that is compatible for the target environment.  Once a machine image has been generated, the machine image can then be registered to the cloud environment and used to provision an instance.  This instance will contain the same packages and files as the original running environment.  This is known as “black box” migration.

You can transform a scan report to an appliance template.  By doing this, you have the opportunity to change the packages, files or configuration information prior to generating and registering a machine image.  This is known as “white box” migration.

.. warning:: Whitebox migration is not supported for Windows

The five main steps of migration are as follows:

   1. The live system is "deep scanned", detecting all the files and configuration information.
   2. The scan report and overlay is sent to UForge AppCenter.
   3. A machine image is generated from the scan (black box migration).  You can also import the scan prior to machine image generation to change the content (white box migration).
   4. The machine image is uploaded and registered to the target environment.
   5. The registered machine image (also known as a template in cloud terminology) can be used to provision one or more instances.  These instances have near identical content to the original live system.

   .. image:: /images/migration-process.jpg
