.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _migration-process-whitebox:

Whitebox Migration Process
--------------------------

The goal of white box migration is to change the contents found during the scan of the live system prior to migration.  To carry out a white box migration, the user must import the scan report as an appliance template. The import process basically transforms the meta-data of the scan report to an appliance template.

.. warning:: White box migration is not supported for Windows.  

As part of this transformation process, the scan information is mapped to one or more of the appliance template layers as follows:

	* Native packages that have been analyzed by the scan process and correctly found in one of UForge AppCenter package repositories are added to the ``OS Profile``.
	* Native packages that have been analyzed by the scan process and NOT found in any of UForge AppCenter's package repositories are added to a ``My Software`` component.
	* All other files (including configuration files) that are not part of a native package are added to a ``My Software`` component.
	* Partitioning table information is added to the ``Install Profile``
	* Root and user passwords are added to the ``Install Profile`` (encrypted)
	* Timezone is added to the ``Install Profile``
	* Keyboard is added to the ``Install Profile``
	* Kernel parameters are added to the ``Install Profile``
	* Users and groups are added to the ``Install Profile``

.. warning:: In the current version of UForge AppCenter, SELinux settings are not provided as part of the ``Install Profile``.  Any SELinux settings are lost at this stage.  

.. image:: /images/migration-whitebox-mapping.jpg

Once the scan report has been imported as an appliance template, you can update the content prior to generating a machine image.

The generation process is slightly different between black box and white box migration. UForge is not generating a machine image from a scan report, rather from an appliance template. You can add and remove packages at will from the OS Profile layer.  Consequently package dependencies are calculated using the list of packages in the OS Profile. Any missing packages form the OS Profile are added prior to generating the machine image.  



