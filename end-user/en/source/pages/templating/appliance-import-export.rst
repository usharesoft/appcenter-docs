.. Copyright 2018 FUJITSU LIMITED

.. _appliance-import-export:

Importing and Exporting Templates
---------------------------------

You can import and export appliance templates.  When exporting, an archive is created of the appliance template.  This archive includes a meta-data file describing the appliance template (based on the `hammr <http://hammr.io>`_ specification) as well as any bundled software that was initially uploaded as part of the template creation.

Likewise, an archive can be imported to the UForge platform, creating a new appliance template in your ``Appliance Library`` under the ``Imported Appliances`` section.

.. warning:: If you want to export an appliance template with software bundles in UForge 3.7 and import it in UForge 3.8 or more, you will need to modify your template to make it compatible. Refer to :ref:`appliance-update-37-import`.

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

When you import a Windows appliance, UForge checks if the golden image used to create the appliance exists on the UForge server. If it does not exist, the import will fail. In order to import the template, you must export the appliance and remove the OS profile.

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

.. _appliance-update-37-import:

Updating a 3.7 Appliance Template Before Exporting For 3.8
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When you export an appliance in UForge 3.7 that contains software bundles, and import it to UForge 3.8, you will encounter compatibility issues. In order to import the template, you must modify the file containing the description of your appliance (``template.yml`` or ``template.json``).

In this file, there is a section ``bundles``, that contains a subsection ``oses``. You need to remove the entire content of the subsection ``oses``, and replace it by a section ``restrictionRule``. Refer to :ref:`restriction-rules` for detailed documentation about restriction rules.

For example, if your ``oses`` subsection is like this::

    - name: "CentOS"
      version: "7"
      arch: "x86_64"
    - name: "Debian"
      version: "8"
      arch: "x86_64"

Then you need to write this restriction rule instead::

    (Distribution#name=CentOS && Distribution#version=7 && Distribution#arch=x86_64) || (Distribution#name=Debian && Distribution#version=8 && Distribution#arch=x86_64)

When you export a Windows appliance in UForge 3.7, you will also encounter compatibility issues. In order to import the template, you must modify the file containing the description of your appliance (``template.yml`` or ``template.json``).

In this file, there is a section ``os`` that contains various information and in particular the profile name. The new 3.8 template is now having additional fields, ``windowsEdition``, ``windowsType`` and ``windowsLanguage`` that you need to fulfill to be able to import the template.

For example, if your ``os`` section is like this::

			name: "Windows"
			version: "Server2012R2"
			arch: "x86_64"
			updateTo: "12-19-2016 10:32:07 GMT"
			profile: "Standard Full English"

Then you should add the following fields::

			name: "Windows"
			version: "Server2012R2"
			arch: "x86_64"
			updateTo: "12-19-2016 10:32:07 GMT"
			profile: "Standard Full English"
			windowsEdition: "standard"
			windowsType: "full"
			windowsLanguage: "English"

The profile should exist on the target UForge platform, otherwise you must delete the ``profile`` field and import the template like this::

			name: "Windows"
			version: "Server2012R2"
			arch: "x86_64"
			updateTo: "12-19-2016 10:32:07 GMT"

Thus, your appliance will be imported and you will be able to setup the OSProfile manually in the UI.
