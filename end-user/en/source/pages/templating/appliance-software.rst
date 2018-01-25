.. Copyright 2017 FUJITSU LIMITED

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

	1. From the ``Apps`` tab, click on ``Software Library`` in the top left hand side of the UI.  This opens your private Software Library.  
	2. Click on the ``add software`` in the top right hand side.
	3. You are now prompted for the name, version and maintainer of the software component you would like to add. You can also set a tag and category. Click ``create`` to complete.
	4. The software ``Overview`` page will now open. You can modify the name and version, and add a description.
	5. To upload the files, go to the ``Files`` page. 

		.. image:: /images/adding-mysoftware-MSO2.png

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

	9. Optionally, you can restrict the distribution or target format that the software applies to, from the ``Restrictions`` page. The restriction rule is set as a regular expression. For more information, refer to :ref:`restriction-rules`.

	10. From the ``Repository Packages`` page, you can set the packages with which your software is compatible. This page will only be visible if the restriction rule matches only one distribution. You can search for packages. Select and click the down arrow to add them. Click ``save``.

	11. From the ``Boot Scripts`` page, upload any boot scripts you want to add to this software. You can either:
		- Upload an existing boot script file by using the ``upload`` icon.
		- Create a new boot script by clicking ``new``.

		.. image:: /images/mysoftware-bootscript2.png

	In both cases, you must select the type. If you select ``first boot``, then the boot script will be launched once, the first time the instance is launched.  If you select ``every boot``, then the boot script will be launched every time the instance is rebooted. You must also set the boot order.

	12. From the ``Licenses`` page, upload any licenses you want to add to this software. Click ``upload`` and select your license.
	13. Add the uploaded software component to the appliance.  Click on the ``Appliance Library`` to view your Appliance Library.  Double-click on the appliance template you want to add the software to.
	14. Go to the ``Stack`` page and click on the ``My Software`` button in the toolbox.

		.. image:: /images/mysoftware.png

	15. Select the software components you want to add and click the down arrow button.
	16. Click ``save`` to add this software component to your appliance template.

.. _restriction-rules:

Restricting Software Components for OSes and Formats
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Under ``My Software`` you can restrict the usage of a software bundle based on a distribution name, family, architecture or for a specific machine image format.

* To set restriction rules:

	1. Under the ``Apps`` go to the ``Software Library`` page.
	2. Select the sofware you want to modify.
	3. Go to the ``Restrictions`` tab. Enter the restriction rule. The restriction rule is represented by a logical expression with format ``Object#field=value`` or ``Object#field!=value``, where:
		* ``object`` is either ``Distribution`` or ``TargetFormat``
		* for ``Distribution`` field is ``family``, ``pkgType``, ``name``, ``version`` or ``arch``. The ``version`` must be a major version.
		* for ``TargetFormat`` field is ``name`` or ``type`` 
		* ``value`` is the value you want to match with the fields. For example, ``CentOS`` for Distribution name, ``linux`` for Distribution family, ``x86_64`` for Distribution arch, ``VirtualBox`` for TargetFormat name, ``cloud`` for TargetFormat type.
		* logical operator is ``||`` for OR and ``&&`` for AND
		* carriage return is not authorized

For example, if the software bundle is designed only for distributions CentOS 7 x86_64 or Debian 8 x86_64, or for image format with type virtual, then you would note the Restriction rule as follows:: 

	(Distribution#arch=x86_64 && ((Distribution#name=CentOS && Distribution#version=7) || (Distribution#name=Debian && Distribution#version=8))) || TargetFormat#type=virtual

Once you have set a restriction rule, you will see a cube next to the software component, under the column ``Format dependent``.

	.. image:: /images/mysoftware-restriction.png

.. warning:: If your software bundle is limited to a certain target format and you generate an image in another format, your appliance will be generated but the software bundle will not be part of the final image. A note indicating this will appear when you select to generate the machine image, as in the following image.

	.. image:: /images/mysoftware-removed.png

* Restriction rule values:

By using the command-line tool `hammr <http://hammr.io>`_, you are able to retrieve available distributions:

.. code-block:: bash

	$ hammr os list --url https://uforge.example.com/api -u username -p password

Where ``Distribution`` fields possible values are:
	* ``name``: the value listed in the `Name` column
	* ``version``: the value listed in the `Version` column
	* ``arch``: the value listed in the `Architecture` column
	* ``family``: can be one of the following ``linux``, ``unix`` or ``windows``
	* ``pkgType``: can be either ``application/x-rpm`` or ``application/x-debian-package``

By using the command-line tool `hammr <http://hammr.io>`_, you are able to retrieve available machine image formats:

.. code-block:: bash

	$ hammr format list --url https://uforge.example.com/api -u username -p password

Where ``TargetFormat`` fields possible values are:
	* ``name``: the value listed in the `Builder Type` column
	* ``type``: can be one of the following ``cloud``, ``container``, ``physical`` or ``virtual``

