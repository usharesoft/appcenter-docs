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

	.. image:: /images/project-catalog.jpg

	3. Select the projects, for example Apache and MySQL and click the down arrow button. You can scroll through the available projects or enter a search string to filter the list.
	4. Click Save. These projects should now be displayed in the second table.   

	.. image:: /images/projects-added.jpg

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
	3. You are now prompted for the name and version of the software component you would like to add. For example ``Wordpress`` and the version ``3.9.1``.  Click ``create`` to complete.
	4. The software ``Overview`` page will now open. You can modify the name and version, and add a description.
	5. To upload the files, go to the ``Files`` page. Click ``upload`` to select the files you want to add and click ``open``. 
	6. Click ``save``.

	.. image:: /images/adding-mysoftware2.jpg


	7. Optionally, you can modify the ``default install path`` that will be used. If you have modified the name of your appliance, it may not be reflected in the install path.
	8. By default ``.deb`` and ``.rpm`` files will be installed at generation time. Optionally you can edit the settings for those files: 
		- Click on the pencil on the right hand side of your uploaded file.
		- Un-select ``Install this native package as part of the generation``. 
		- Click the check mark to save your changes. 
	
	In this case, the ``.deb`` or ``.rpm`` archive file will just be in the directory but will not be installed at generation time.

	.. image:: /images/install-mysoftware-gen.jpg

	9. Optionally, you can select to unzip archives as part of the generation. To do so: 
	    - Click on the pencil on the right hand side of your uploaded file. 
	    - You can then edit the install path and select if it should be extracted. 
	    - Click the check mark to save your changes.

	.. image:: /images/extract-mysoftware.jpg

	10. From the ``Licenses`` page, upload any licenses you want to add to this software. Click ``upload``, select your license and click ``save``.
	11. Add the uploaded software component to the appliance.  Click on the ``Appliance Library`` to view your Appliance Library.  Double-click on the appliance template you want to add the software to.
	12. Go to the ``Stack`` page and click on the ``My Software`` button in the toolbox.  

	.. image:: /images/mysoftware.jpg

	13. Select the software components you want to add and click the down arrow button. 
	14. Click ``save`` to add this software component to your appliance template.

