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

	3. This will start the export process.  

	.. image :: /images/exporting-appliance.png

	4. Once the export is complete, you will be prompted to download the archive file.

	.. image :: /images/export-download.png

The equivalent export feature is available when editing an appliance template.

.. _appliance-import:

Importing
~~~~~~~~~

.. warning:: You will only be able to import a Windows appliance to a UForge has the same golden image as the one used for the scanned appliance. In order to make sure that you can use the Windows appliance, you must export the appliance and remove the OS section. Refer to :ref:`appliance-update-windows-import`.

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

If you try to import a Windows appliance, UForge will check if the golden image used to create the appliance exists on the UForge. If it does not exist, the import will fail. However, in order to import the template, you must export the appliance and remove the OS profile.

For example, in order to remove the OS section before importing your Windows appliance:

	1. Go to your ``Appliance Library``.
	2. Click on the ``export`` icon on the right hand side of the appliance template to export.
	3. Once the export is complete, you will be prompted to download the archive file.
	4. Open the archive file. The OS section should look something like:

	.. code-block:javascript

		os:
		    name: "Windows"
		    version: "Server2012R2"
		    arch: "x86_64"
		    profile: "Win2K12R2 scan Scan #1"
		    windowsEdition: "standard"
		    windowsType: "full"
		    windowsLanguage: "English"

	5. Update the OS section to remove the lines ``profile``, ``windowsEdition``, ``windowsType``, ``windowsLanguage``.
	6. Save the file.
	7. Go to your ``Appliance Library``. 
	8. Click on the ``import`` button at the top right hand side of the view.
	9. A number of options are proposed. Select the method of import and click the folder icon to select the archive to import.
	10. Click ``import``. This will start the import process. 
