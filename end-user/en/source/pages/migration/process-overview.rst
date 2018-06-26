.. Copyright 2018 FUJITSU LIMITED

.. _migration-process-overview:

Migration Process Overview
---------------------------

You can select two types of scan: scan or scan with overlay. A scan will scan the target environment, but will only return the system packages and configuration known to UForge. A scan with overlay will include an overlay report which details all the extra files, packages or specific configuration. 

.. note:: Scan with overlay is only supported for Linux-based machines.


The five main steps of migration are as follows:

   1. The live system is "deep scanned", detecting all the files and configuration information.
   2. The scan report and overlay is sent to UForge AppCenter.
   3. A machine image is generated from the scan (black box migration).  With ``Re-Platform`` you can also import the scan prior to machine image generation to change the content (white box migration).
   4. The machine image is uploaded and registered to the target environment.
   5. The registered machine image (also known as a template in cloud terminology) can be used to provision one or more instances.  These instances have near identical content to the original live system.

   .. image:: /images/migration-process.jpg
