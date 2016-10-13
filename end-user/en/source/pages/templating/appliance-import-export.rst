.. Copyright 2016 FUJITSU LIMITED

.. _appliance-import-export:

Importing and Exporting Templates
---------------------------------

You can import and export appliance templates.  When exporting, an archive is created of the appliance template.  This archive includes a meta-data file describing the appliance template (based on the `hammr <http://hammr.io>`_ specification) as well as any bundled software that was initially uploaded as part of the template creation.

Likewise, an archive can be imported to the UForge platform, creating a new appliance template in your ``Appliance Library`` under the ``Imported Appliances`` section.

Exporting
~~~~~~~~~

To export an existing appliance:

	1. Go to your ``Appliance Library``

	2. Click on the ``export`` icon on the right hand side of the appliance template in question to export

	.. image :: /images/export-appliance.png

	3. This will start the export process.  

	.. image :: /images/exporting-appliance.png

	4. Once the export is complete, you will be prompted to download the archive file

	.. image :: /images/export-download.png

The equivalent export feature is available when editing an appliance template.

Importing
~~~~~~~~~

To import an archive:

	1. Go to your ``Appliance Library`` 

	2. Click on the ``import`` button at the top right hand side of the view

	.. image :: /images/import-appliance.png

	3. This opens up a file browser, choose the archive to upload

	4. This will start the import process.  

	.. image :: /images/importing-appliance.png

	5. Once the import is complete, a new appliance template can be found in the ``Imported Appliances`` sub-section of your ``Appliance Library``.


.. note:: If you have already an appliance with the same name, version and OS type then this import will fail due to an appliance template conflict.  In such situations, you will require to delete the original appliance template.
