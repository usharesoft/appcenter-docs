.. Copyright 2016 FUJITSU LIMITED

.. _appliance-custom-software:

Adding Custom Software Components
---------------------------------

There are two ways to add 3rd party software components or your own software to an appliance template.

The first way is through the ``Project Catalog``.  This catalog is public to all the users on UForge and is maintained by the privileged users and administrators.  

If the catalog does not contain the software component you are looking for, then you can upload the software into the ``My Software`` library.  This is your own private software library, allowing you to upload any software into UForge and be able to add it to any of your appliance templates.

.. _appliance-projects:

Adding Software from the Project Catalog
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The following describes how to add MySQL and Apache to an appliance. 
	
	1. Select the appliance to modify and go to the ``Stack`` page.
	2. Click on the ``Projects`` in the toolbox.  This displays the Project Catalog. The bottom table lists which projects have already been added to the appliance. 

		.. image:: /images/project-catalog.png

	3. Select the projects, for example Apache and MySQL and click the down arrow button. You can scroll through the available projects or enter a search string to filter the list.
	4. Click Save. These projects should now be displayed in the second table.   

		.. image:: /images/projects-added.png

.. _appliance-mysoftware:

Adding Software from Your Software Library
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can add your own custom software either using the ``Software Library`` or by including boot scripts.  My Software overlay files (for example ``/etc/profile.d/xxx.sh``) will be run before bootscripts when the machine is booted.

The following is a list of supported file formats:

* Linux only, note by default .rpm and .deb files will be installed at generation. This can be modified when you upload the files (see procedure below):

    - .rpm ("rpm i" will be executed)
    - .deb ("dpkg -i" will be executed)

* Windows only:
    - .msi
    - .exe

* Linux and Windows compatible:
	- .tar.bz2
	- .bz2
	- .tar.gz
	- .tgz.bz2
	- .tgz
	- .gz
	- .tar
	- .zip
	- .tar.zip

To add custom software components to an appliance:

	1. From the ``VM Builder`` tab, click on ``Software Library`` in the top left hand side of the UI.  This opens your private Software Library.  
	2. Click on the ``add software`` in the top right hand side.
	3. You are now prompted for the name, version and maintainer of the software component you would like to add. You can also set a tag and category. Click ``create`` to complete.
	4. The software ``Overview`` page will now open. You can modify the name and version, and add a description.
	5. To upload the files, go to the ``Files`` page. 

		.. image:: /images/adding-mysoftware-MSO.png

	.. note:: If you want to group a set of files, you can create a folder by clicking ``create folder``. Then enter a folder name and click ``create folder``. Now if you want to put files in this folder, click on the upload icon next to the folder name.

	If you create a folder, you can then click on the pencil icon to edit the file properties. Here you can select to apply the same owner and rights to all the files added to the folder.

	.. image:: /images/mysoftware-folder-edit.png

	You can now upload the files as follows:
			a. Click ``upload`` to select the files you want to add and click ``open``.
			b. Click ``fetch`` to set an archive location where the files should be retrieved. When using the ``fetch`` option you can indicate a remote URL or artifact account (for information on artifact accounts, refer to :ref:`account-artifact-account`). You can also select to have the files uploaded to the UForge by checking ``use cache``. 

		.. image:: /images/fetch-mysoftware.png 

	6. Optionally, you can modify the ``default install path`` that will be used. If you have modified the name of your appliance, it may not be reflected in the install path.

	7. By default ``.deb`` and ``.rpm`` files will be installed at generation time. Optionally you can edit the settings for those files: 
		- Click on the pencil on the right hand side of your uploaded file.
		- Un-select ``Install this native package as part of the generation``. 
		- Click the check mark to save your changes. 
	
		In this case, the ``.deb`` or ``.rpm`` archive file will be in the directory but will not be installed at generation time.

		.. image:: /images/install-mysoftware-gen.png

	8. Optionally, you can select to unzip archives as part of the generation. To do so: 
	    - Click on the pencil on the right hand side of your uploaded file. 
	    - You can then edit the install path and select if it should be extracted. 
	    - Click the check mark to save your changes.

		.. image:: /images/extract-mysoftware.png

	9. From the ``Distribution`` page, you can set the distributions with which your software is compatible. By default, all the distributions listed in the bottom table are compatible. If you want to remove a distribution from the list, select and click the up arrow and ``save``. 

		.. note:: If you remove all the distribution compatibility, the software will not be visible for any appliances.

	10. From the ``Repository Packages`` page, you can set the packages with which your software is compatible. This page will only be visible if you have selected only one distribution. You can search for packages. Select and click the down arrow to add them. Click ``save``.

	11. From the ``Boot Scripts`` page, upload any boot scripts you want to add to this software. You can either:
		- Upload an existing boot script file by using the ``upload`` icon.
		- Create a new boot script by clicking ``new``.

		.. image:: /images/mysoftware-bootscript.png

	In both cases, you must select the type. If you select ``first boot``, then the boot script will be launched once the first time the instance is launched.  If you select ``every boot``, then the boot script will be launched every time the instance is rebooted. You must also set the boot order.

	12. From the ``Licenses`` page, upload any licenses you want to add to this software. Click ``upload``, select your license and click ``save``.
	13. Add the uploaded software component to the appliance.  Click on the ``Appliance Library`` to view your Appliance Library.  Double-click on the appliance template you want to add the software to.
	14. Go to the ``Stack`` page and click on the ``My Software`` button in the toolbox.  

		.. image:: /images/mysoftware.png

	15. Select the software components you want to add and click the down arrow button. 
	16. Click ``save`` to add this software component to your appliance template.

