.. Copyright 2017 FUJITSU LIMITED

.. _manage-project-catalog:

Managing the Project Catalog
-----------------------------

A Project Catalog is a collection of software components that are available for UForge users to use when building their server templates. A project is one software component. A project includes files, binaries or native packages and may have an EULA (End User License Agreement).  

Each organization within the UForge platform has a project catalog, and each member of the organization has access to the project catalog, allowing them to add any of the projects to their server templates. The contents of the project catalog, however, can only be updated and managed by the administrators of the organization where the project catalog belongs. An organization administrator can:

	* add new projects to the catalog
	* update existing projects to the catalog
	* mark a project obsolete.
	* delete a project.

You can also create custom OS profiles to include specific packages to an existing (standard) OS profile. See :ref:`create-custom-os`.

.. _add-project:

Adding a Project
~~~~~~~~~~~~~~~~

To add a new project: 

	1. Under the Administration tab, click ``Projects``.

	2. Click on ``add project`` in the top right hand. 

		.. note:: Projects are associated with a specific version of operating system. If a project supports more than one version of operating system, then you must re-create a new project for each operating system version. To automate the way projects are added and maintained, use the UForge APIs (for example to add the same project to multiple operating systems). 

	3. Fill in the mandatory information including:

			* Name of the project
			* Version
			* Project tag
			* Category
			* Maintainer

		.. image:: /images/create-project2.png

	4. Click ``create``.

	5. Optionally, you can add the following meta-data on the ``Overview`` tab:
	
		* a logo for the project
		* website information of where the project came from
		* description

	6. You can (optionally) restrict the distribution or target format that the project applies to, from the ``Restrictions`` page. The restriction rule is set as a regular expression. For more information, refer to :ref:`restrict-distrib`. Click ``save``.

		.. image:: /images/create-project-restrictions2.png

	7. You can add files by clicking ``upload``. If you want to add many files, you can create a folder and add files within the folder.

		.. image:: /images/create-project-files.png

		If you want to include files from a remote location click on ``pull``. Select how the file should be retrieved and if it should be cached.

		.. image:: /images/create-project-file-pull.png

	8. You can add a license (optional). To do so, 

		a. Go to the ``License`` tab
		b. Select the license type from the drop-down menu.
		c. Click ``upload``.
		d. Select the file and click ``open``.

	9. You can add a bootscript (optional) on the ``Bootscript`` tab. 

		a. Enter the name.
		b. Select the type. If you select first boot, then the boot script will be launched once the first time the instance is launched. If you select every boot, then the boot script will be launched every time the instance is rebooted. 
		c. Set the boot order.
		d. Enter the boot script.

		.. image:: /images/create-project-bootscript.png
	
	10. Click ``Save``.

.. _restrict-distrib:

Restricting Projects for Software Bundles
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

UForge allows you to restrict projects for a set distribution or format type.

To set restriction rules for a project: 

	1. Under the ``Administration`` tab, click ``Projects``.
	2. Select the project you want to modify.
	3. Go to the ``Restrictions`` tab. Enter the restriction rule. The restriction rule is represented by a logical expression with format ``Object#field=value`` or ``Object#field!=value``, where:
		* ``object`` is either ``Distribution`` or ``TargetFormat``
		* for ``Distribution`` field is ``family``, ``pkgType``, ``name``, ``version`` or ``arch``. The ``version`` must be a major version.
		* for ``TargetFormat`` field is ``name`` or ``type`` 
		* ``value`` is the value you want to match with the fields. For example, ``CentOS`` for Distribution name, ``linux`` for Distribution family, ``x86_64`` for Distribution arch, ``VirtualBox`` for TargetFormat name, ``cloud`` for TargetFormat type.
		* logical operator is ``||`` for OR and ``&&`` for AND

For example, if the software bundle is designed only for distributions CentOS 7 x86_64 or Debian 8 x86_64, or for TargetFormat with type virtual, then you would note the Restriction rule as follows:: 

	(Distribution#arch=x86_64 && ((Distribution#name=CentOS && Distribution#version=7) || (Distribution#name=Debian && Distribution#version=8))) || TargetFormat#type=virtual

.. note:: If your software bundle is limited to a certain target format and you generate an image in another format, your appliance will be generated but the software bundle will not be part of the final image.

.. _update-project:

Updating a Project
~~~~~~~~~~~~~~~~~~

UForge provides the default projects for the OSes provided.

To modify the projects: 

	1. Under the ``Administration`` tab, click ``Projects``.
	2. You will see a list of all the projects that are part of the org.
	3. Click on the project you wish to edit.  At this stage you can change any of the meta-data, restrictions and files uploaded.

.. _delete-project:

Deleting a Project
~~~~~~~~~~~~~~~~~~

When deleting projects from the catalog, it is important to understand that you should check that no appliance templates are using the project you wish to delete (otherwise this may break generating a machine image for the appliance template).

.. note:: If an appliance template is still using a project, you can remove the project from the catalog by marking it as ``obsolete``.  This does not delete the project contents, however users cannot use the project for new appliance templates.  See :ref:`obsolete-project` for more information.

To delete the project:

	1. Under the ``Administration`` tab, click ``Projects``.
	2. You will see a list of all the projects that are part of the org.
	3. To delete the project can either: 

	   click on the ``delete`` icon at the extreme right-hand side in the table for the project item.

	   .. image:: /images/project-table-delete.png

	   or

	   click on the project item to edit it, then click on the ``delete`` icon at the top right-hand side of the project edit page. 

	   .. image:: /images/project-delete2.png

.. _obsolete-project:

Marking a Project as Obsolete
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Another way to remove a project from the project catalog is to mark the project as ``obsolete``.  This ensures that any existing templates that use the project can still generate images correctly, however the project is no longer accessible in the catalog for new appliance templates.

To mark a project as ``obsolete``:

	1. Under the ``Administration`` tab, click ``Projects``.
	2. You will see a list of all the projects that are part of the org.
	3. Click on the project to edit it.
	4. Click on the ``obsolete`` icon at the top right-hand side of the project edit page. 

	.. image:: /images/project-obsolete2.png

