.. Copyright 2017 FUJITSU LIMITED

.. _appliance-import-export:

Importing and Exporting Templates
---------------------------------

You can import and export appliance templates.  When exporting, an archive is created of the appliance template.  This archive includes a meta-data file describing the appliance template (based on the `hammr <http://hammr.io>`_ specification) as well as any bundled software that was initially uploaded as part of the template creation.

Likewise, an archive can be imported to the UForge platform, creating a new appliance template in your ``Appliance Library`` under the ``Imported Appliances`` section.

Exporting
~~~~~~~~~

To export an existing appliance:

	1. Go to your ``Appliance Library``.

	2. Click on the ``export`` icon on the right hand side of the appliance template in question to export.

	.. image :: /images/export-appliance.png

	3. A pop-up will appear, allowing you to select the format you would like (yaml or json).

	.. image :: /images/export-appliance-format.png

	4. Click ``export``. This will start the export process.  

	.. image :: /images/exporting-appliance.png

	5. Once the export is complete, you will be prompted to download the archive file.

	.. image :: /images/export-download.png

The equivalent export feature is available when editing an appliance template.

.. note:: An exported Windows-based template does not contain the "Activation Key" to ensure this data remains confidential.

.. _appliance-import:

Importing
~~~~~~~~~

.. warning:: You will only be able to import a Windows appliance to a UForge that has the same golden image as the one used by the appliance. If the golden does not exist on the target UForge you must export the appliance without OS Profile or remove some OS section fields in template file. Refer to :ref:`appliance-update-windows-import`.

To import an archive:

	1. Go to your ``Appliance Library``. 

	2. Click on the ``import`` button at the top right hand side of the view.

	.. image :: /images/import-appliance.png

	3. A number of options are proposed. Select the method of import and click the folder icon to select the archive to import.

	.. image :: /images/import-options2.png

	4. Click ``import``. This will start the import process. The import progress will be shown.  

	.. image :: /images/importing-appliance.png

	5. Once the import is complete, a new appliance template can be found in the ``Imported Appliances`` sub-section of your ``Appliance Library``.

.. _appliance-update-windows-import:

Updating a Windows Appliance Before Import
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When you import a Windows appliance, UForge checks if the golden image used to create the appliance exists on the UForge. If it does not exist, the import will fail. In order to import the template, you must export the appliance and remove the OS profile. 

For example, in order to remove some OS section fields before importing your Windows appliance:

	1. Go to your ``Appliance Library``.
	2. Click on the ``export`` icon on the right hand side of the appliance template to export.
	3. Once the export is complete, you will be prompted to download the archive file.
	4. Open the archive file. The OS section should look something like:

	.. code-block:: yaml

		os:
		  name: "Windows"
		  version: "Server2012R2"
		  arch: "x86_64"
		  profile: "Win2K12R2 scan Scan #1"
		  windowsEdition: "standard"
		  windowsType: "full"
		  windowsLanguage: "English"

	5. Update the OS section to remove the lines ``profile``, ``windowsEdition``, ``windowsType``, ``windowsLanguage``. For example:

	.. code-block:: yaml

		os:
		  name: "Windows"
		  version: "Server2012R2"
		  arch: "x86_64"
		    
	6. Save the file.
	7. Go to your ``Appliance Library``. 
	8. Click on the ``import`` button at the top right hand side of the view.
	9. A number of options are proposed. Select the method of import and click the folder icon to select the archive to import.
	10. Click ``import``. This will start the import process. 

You can also remove the OS Profile from the UI by going to the ``Stack`` page of the appliance before exporting.
