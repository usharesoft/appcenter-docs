.. Copyright 2018 FUJITSU LIMITED

.. _appliance-generate-machine-image:

Generating a Machine Image
--------------------------

Once an appliance template has been created, you can generate a machine image that packages the stack to run on a particular virtual, cloud, container or physical environment. For a complete list of supported machine image formats, refer to :ref:`supported-image-formats`.

.. note:: If you want to generate a K5 image or an OpenStack image, the appliance partition should contain only 1 disk.

To generate a machine image:
	1. Go to the ``Apps`` tab.
	2. Select the appliance from the ``Appliance Library``. 
	3. Click on the ``generate`` button at the top right to display all possible image formats which can be generated. The formats are organized by type: Cloud, Container, Virtual, Physical.
	4. Choose the image format you would like to generate. For a Docker image, refer to :ref:`appliance-docker-image`.

	.. note:: If you are generating an image for VMware vCenter make sure that your generated image's hardware version is the most up to date for the ESXi host that you are using for publish. For more information please refer to `VMWare recommentations <https://kb.vmware.com/selfservice/microsites/search.do?language=en_US&cmd=displayKC&externalId=1003746>`_

	5. You will see a recap of the image you are about to generate. 

		.. note:: If you want to ignore dependency checking during image generation (for example because you have knowingly removed a package dependency that is not required in your environment), then you check the option ``ignore dependency checking warnings``. Note that this is an advanced option and should not be used systematically.

		.. warning:: If your software bundle is limited to a certain target format and you generate an image in another format, your appliance will be generated but the software bundle will not be part of the final image.  A note indicating this will appear when you select to generate the machine image, as in the following image.

	.. image:: /images/mysoftware-removed.png

	6. You can set the disk size, then click the ``generate`` button to launch a generation in UForge for this appliance template. 

		.. note:: Depending on the packages you install and the size of your software, make sure that the disk size is large enough to accommodate the software to be installed.  For Windows-based operating systems, it is advised to have a disk size of ``32GB``, as recommended by Microsoft. Moreover, depending on the OS profile used, and Project or MySoftware components attached to the template, the disk size may have to be larger.

The generation will take a few minutes to complete (depending on the number of packages in the appliance template and the disk size chosen). The generation progress is shown.

.. note:: Some services are disabled or enabled depending on the target machine image being created (refer to :ref:`service-state`).

Once the generation is complete, you can download the image locally, or for certain cloud formats register the machine image directly to the target environment using your cloud credentials.

.. note:: For PXE, you cannot download the image but can launch it through an iPXE shell. For more information, refer to :ref:`PXE-image`.

You will note that a package ``uforge-install-config`` is injected in the generated image. This file is responsible for: 

	1. launching the dialog for the install profile configurations which are not automatic (keyboard, root password, licenses, time zone, static IP)
	2. executing the installation bootscript of the template

	If the template is configured to be fully automatic in the ``Install Profile`` and has no bootscript that is supposed to run at every boot, the uforge-install-config package and associated ``/etc/UShareSoft`` directory can be removed safely.

However, it is preferable to leave this file.

.. _appliance-docker-image:

Generating a Docker Image
~~~~~~~~~~~~~~~~~~~~~~~~~

.. note:: You cannot generate a Docker image from a Windows template or a Windows scan.

.. note:: If you generate a Docker image from an appliance that does not have an install profile set as automatic, then you will not be able to launch the Docker image.

To generate a machine image:
	1. Go to the ``Apps`` tab.
	2. Select the appliance from the ``Appliance Library``. 
	3. Click on the ``generate`` button at the top right to display all possible image formats which can be generated. 
	4. Choose ``Container``, then ``Docker`` image format. 
	5. Enter the Docker entrypoint in exec form. For example ``["/usr/sbin/httpd", "-DFOREGROUND"]``.
	6. Click the ``generate`` button to launch a generation in UForge for this appliance template. 
	7. Once the generation is complete, the Docker image will be listed in your library under ``Machine Images``.
	8. The following pop-up will be displayed if you click on the download icon.

		.. image:: /images/docker-image-publish.png

.. _appliance-openshift-image:

Generating an OpenShift Image
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. note:: You cannot generate an OpenShift image from a Windows template or a Windows scan.

To generate a machine image:
	1. Go to the ``Apps`` tab.
	2. Select the appliance from the ``Appliance Library``. 
	3. Click on the ``generate`` button at the top right to display all possible image formats which can be generated. 
	4. Choose ``Cloud``, then ``OpenShift`` image format. 
	5. Fill the entrypoint in exec form. For example ``["/usr/sbin/httpd", "-DFOREGROUND"]``.
	6. Click the ``generate`` button to launch a generation in UForge for this appliance template. 
	7. Once the generation is complete, the OpenShift image will be listed in your library under ``Machine Images``.

	.. note:: It is not possible to publish from a Docker image to OpenShift.

