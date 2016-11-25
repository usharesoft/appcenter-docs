.. Copyright 2016 FUJITSU LIMITED

.. _appliance-generate-machine-image:

Generating a Machine Image
--------------------------

Once an appliance template has been created, you can generate a machine image that packages the stack to run on a particular virtual, cloud, container or physical environment. For a complete list of supported machine image formats, refer to :ref:`supported-image-formats`.

To generate a machine image:
	1. Go to the ``VM Builder`` tab.
	2. Select the appliance from the ``Appliance Library``. 
	3. Click on the ``generate`` button at the top right to display all possible image formats which can be generated. The formats are organized by type: Cloud, Container, Virtual, Physical.
	4. Choose the image format you would like to generate. For a Docker image, refer to :ref:`appliance-docker-image`.
	5. You will see a recap of the image you are about to generate. 

		.. note:: If you want to ignore dependency checking during image generation (for example because you have knowingly removed a package dependency that is not required in your environment), then you check the option ``ignore dependency checking warnings``. Note that this is an advanced option and should not be used systematically.

	6. You can set the disk size, then click the ``generate`` button to launch a generation in UForge for this appliance template. 

		.. note:: Depending on the packages you install and the size of your software, make sure that the disk size is large enough to accommodate the software to be installed.  For Windows-based operating systems, it is advised to have a disk size of at least ``14GB`` for core versions, and at least ``20GB`` for full versions.

The generation will take a few minutes to complete (depending on the number of packages in the appliance template and the disk size chosen). The generation progress is shown.
Once the generation is complete, you can download the image locally, or for certain cloud formats register the machine image directly to the target environment using your cloud credentials.

You will note that a package ``uforge-install-config`` is injected in the generated image. This file is responsible for: 

	1. launching the dialog for the install profile configurations which are not automatic (keyboard, root password, licenses, time zone, static IP)
	2. executing the installation bootscript of the template

	If the template is configured to be fully automatic in the ``Install Profile`` and has no bootscript that is supposed to run at every boot, the uforge-install-config package and associated ``/etc/UShareSoft`` directory can be removed safely.

However, it is preferable to leave this file.

.. _appliance-docker-image:

Generating a Docker Image
~~~~~~~~~~~~~~~~~~~~~~~~~

To generate a machine image:
	1. Go to the ``VM Builder`` tab.
	2. Select the appliance from the ``Appliance Library``. 
	3. Click on the ``generate`` button at the top right to display all possible image formats which can be generated. 
	4. Choose ``Container``, then ``Docker`` image format. 
	5. You can set the disk size, then click the ``generate`` button to launch a generation in UForge for this appliance template. The following pop-up will be displayed once the generation ends on the summary view.

		.. image:: /images/docker-image-publish.png

	5. As indicated in the pop-up, you need to click ``download`` to download the tar.gz.
	6. Run the appropriate docker import command to create the image. The appliance and docker image name will depend on the name you have given them.
	7. You should now be able to see the Docker image in your library.

