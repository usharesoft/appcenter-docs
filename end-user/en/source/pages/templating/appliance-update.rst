.. Copyright 2016 FUJITSU LIMITED

.. _appliance-update:

Modifying an Appliance Template
-------------------------------

You can modify and update appliances that are in your library, including ones that have been imported.

To modify an appliance template: 

	1. Click on the appliance template to modify.
	2. From the ``Overview`` page you can add or change the logo, modify the name, version or description.
	3. On the ``Stack`` page, you will notice the appliance toolbox on the left-hand side.  

	.. image:: /images/toolbox.jpg

The toolbox allows you to define the five key elements of an appliance, namely:

	* ``Install Profile`` – to customize the questions asked when the image is booted for the very first time (or during installation for an ISO image).  It also allows you to customize the disk size and partitioning. For more information see :ref:`appliance-install-profile`.
	* ``OS Profile`` – (mandatory) to choose the operating system packages that are to be used for the appliance. For more information, see :ref:`appliance-os-profile`. Note that the OS Profile cannot be modified for Windows-based applianced. Refer to :ref:`windows-update`.
	* ``Projects`` – to access the UForge Project Catalog.  This catalog provides a set of commonly used 3rd party software components when building appliances.  The Project Catalog is maintained by the UForge administrator. To add software from the Project Catalog to an application, see :ref:`appliance-projects`
	* ``My Software`` – to add to the appliance any software components that you have uploaded. This is also where you can use the Overlay features to manage where the files are installed during generation, if UForge should unzip archives as part of the generation, and set if UForge should on the contrary not install native OS packages. For more information, see :ref:`appliance-mysoftware`
	* ``Configuration`` – to add boot scripts to configure the appliance after provisioning. For more information, see :ref:`appliance-configuration`


.. _appliance-logo:

Adding a Logo
-------------

You can add or modify the appliance logo as follows:

	1. Click on the appliance to modify.
	2. From the ``Overview`` page click on the square and plus (+) image on the left hand-side.
	3. Select the image you want to use as the logo. The format must be .jpg, .jpeg or .png.
	4. Click ``ok`` and save.
