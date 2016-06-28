.. Copyright 2016 FUJITSU LIMITED

.. _manage-project-catalog:

Managing the Project Catalog
-----------------------------

A Project Catalog is a collection of software components that are available for UForge users to use when building their server templates. A project is one software component. A project includes files, binaries or native packages and may have an EULA (End User License Agreement).  

Each organization within the UForge platform has a project catalog, and each member of the organization has access to the project catalog, allowing them to add any of the projects to their server templates. The contents of the project catalog, however, can only be updated and managed by the administrators of the organization where the project catalog belongs. An organization administrator can:

	* add new projects to the catalog
	* update existing projects to the catalog
	* delete a project. The project will no longer appear in the project catalog, however it is not permanently deleted. This ensures that any existing templates that use the project can still generate images correctly.

You can also create custom OS profiles to include specific packages to an existing (standard) OS profile. See :ref:`create-custom-os`.

.. image: /images/project-catalog.jpg

.. _add-project:

Adding a Project
~~~~~~~~~~~~~~~~

To add a new project: 

	1. Under the Administration tab, click ``Projects``.

	2. If you are an administrator to more than one organization, then you can choose the organization to administer from the drop-down menu.

	3. Projects are associated with a specific version of operating system. Click on the operating system you want to create a project for.  This will provide the current list of projects this operating system has. 

	.. note:: If a project supports more than one version of operating system, then you must re-create a new project for each operating system version. To automate the way projects are added and maintained, use the UForge APIs (for example to add the same project to multiple operating systems). 

	4. Click the ``create`` button in the ``Projects`` section of the page.

	Fill in the mandatory information including:

		* Name of the project
		* Version of the project
		* Project tag
		* Category
		* License type.  Note if the software has a proprietary license, then choose ``Custom``. This allows you to upload a custom license
		* Company information. All previous custom companies registered for projects are provided in the list. If the company of the project does not yet exist, choose any existing company and edit it afterwards.

.. image: /images/create-project.jpg

	5. Click ``create``.

	6. Enter a description.

	7. Optionally, you can add the following meta-data:
	
		* a logo for the project
		* website information of where the project came from
		* in the case of a Custom license, upload the license file (HTML or text files)
		* set the default install path

	You can upload the software files that are required by the project. Files can be binaries, text files, jar files etc. The administrator can also choose native packages from the operating system itself to be part of the project.
	
	8. Click ``Save``.

.. update-project:

Updating a Project
~~~~~~~~~~~~~~~~~~

UForge provides the default projects for the OSes provided.

To modify the projects: 

	1. Under the ``Administration`` tab, click ``Projects``.
	2. If you are an administrator to more than one organization, then you can choose the organization to administer from the drop-down menu.
	3. Projects are associated with a specific version of operating system. Click on the operating system you want to modify. You will see a list of all the projects that are part of the OS.
	4. You can select and delete projects.  Note that this will not delete the project but simply mark it as obsolete.
