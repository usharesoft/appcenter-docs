.. Copyright 2017 FUJITSU LIMITED

.. _appliance-publish-machine-image:

Publishing a Machine Image
--------------------------

.. note:: When publishing an image, you have to comply with the license agreement of OSes and software which UForge handles, in particular:

	* Publishing OS image of RHEL subscription to public cloud
		Cloud provider has to be CCSP (Certified Cloud & Service Provider) and be registered to Red Hat Cloud Access. For more details, please confirm with cloud provider.

	* Publishing Windows OS image
		You must acquire Windows licenses in order to handle Windows OSes in UForge and confirm usage conditions of cloud provider and virtualization software which you publish to.

In order to publish a machine image to a cloud environment or container, you must already have credentials to access that environment. 

		.. note:: If you want to publish a Windows image to KVM on Red Hat Linux you need to inject specific VirtIO drivers. See the specific procedure documented in :ref:`publish-win-to-rh`.

	1. If not already done, create an account for the target environment.  For more information, see :ref:`account-cloud-accounts`. 
	2. Go to the appliance and click the ``Machine Images`` page. If you have not generated a machine image, you will need to do so as described in :ref:`appliance-generate-machine-image`.
	3. Click on the arrow pointing to the right to publish your image.

		.. image:: /images/machine-image-publish.png

	4. Following the instructions in the tooltips, choose the account and fill in any additional information required.

	.. note:: When publishing to Microsoft Azure Resource Manager you should note the following restrictions:

		* The storage account must exist in your Microsoft account
		* The container is mandatory. If the value you set does not match an existing container it will be created with the new name you have set.
		* The blob and cloud image name must be unique. If they already exist, this will overwrite an existing one with the same name.
		* The resource group is optional. If you enter a value here, it must already exist in your Microsoft account.

		.. image:: /images/machine-image-publish-arm.png

	5. Click ``publish``.

	.. note:: Publishing an image to Amazon and Outscale will be billed to the user account. Trial Amazon accounts are not supported for publishing images from UForge. Only full Amazon accounts can be used. 

	.. note:: Currently, publications to Docker are only supported for Docker Registry v2.

	6. The publication will take a few minutes to complete (depending on the size of the image and the network connectivity between UForge and the target environment). The publication progress is shown. At the end of the publication, the machine image has been published by UForge to your target environment. The published image can be found in the target cloud environment or container.

	.. note:: If your publication to AWS or Outscale fails with a message ``Unable to connect to proxy``, this may be due to your security settings on your AWS or Outscale account. Your default security group in your AWS or Outscale account must allow SSH from UForge AppCenter compute nodes. You may need to contact your administrator to obtain the IP addresses of the compute nodes in the case of a multi-node deployment of AppCenter.

	UForge does not launch instances in the target cloud environment. If you wish to launch an instance from this machine image, you should go to your target cloud environment console for further actions.

	.. note:: When you publish an image to Amazon or OpenStack, and you have the correct UForge entitlements, you will be able to launch your machine image directly from UForge using the ``Deploy`` option, without having to connect to your cloud platform. Refer to :ref:`deploy-machine-image`.

	.. note:: When you publish an image to VMware, the result will be a template and not a virtual machine.

	.. warning:: If your Fujitsu K5 publish failed, there may be data published to cloud, incurring costs, even if not visible on your cloud account. You should run a cleanup manually. Refer to Chapter 2.7 Object storage of the `FUJITSU Cloud Service K5 IaaS API Reference (Foundation Service) guide <https://k5-doc.jp-east-1.paas.cloud.global.fujitsu.com/doc/en/iaas/document/k5-iaas-api-reference-foundation-service.pdf>`_

.. _publish-win-to-rh:

Publishing a Windows Image to KVM on Red Hat Linux
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. note:: If you want to publish a Windows image to KVM on Red Hat Linux you need to inject specific VirtIO drivers.

       #. In order to add the specific drivers, the Red Hat VirtIO drivers can be either added to AppCenter as a Project if it has been added to your AppCenter by the administrator, or using MySoftware.

               .. note:: If you create a specific VirtIO driver (refer to :ref:`appliance-mysoftware` for more information), the software bundle MUST have a prefixed name ``UForgeWinDrivers``.

       The following files should be included in your software bundle:

               * viostor.sys
               * viostor.inf
               * viostor.cat
               * vioscsi.sys
               * vioscsi.inf
               * vioscsi.cat
               * netkvm.sys
               * netkvm.inf
               * netkvm.cat

       #. When creating your appliance template, add the Project or MySoftware bundle that contains the VirtIO drivers.

       #. Generate the machine image.

       #. Publish the machine image.

