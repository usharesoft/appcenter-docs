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

	1. If not already done, create an account for the target environment.  For more information, see :ref:`account-cloud-accounts`. 
	2. Go to the appliance and click the ``Machine Images`` page. If you have not generated a machine image, you will need to do so as described in :ref:`appliance-generate-machine-image`.
	3. Click on the arrow pointing to the right to publish your image.

		.. image:: /images/machine-image-publish.png

	4. Following the instructions, choose the account and fill in any additional information required.
	5. Click ``publish``.

	.. note:: Publishing an image to Amazon will be billed to the user account. Trial accounts are not supported for publishing images from UForge. Only full Amazon accounts can be used. 

	.. note:: Currently, publication to Docker are only supported for Docker Registry v2.

	6. The publication will take a few minutes to complete (depending on the size of the image and the network connectivity between UForge and the target environment). The publication progress is shown. At the end of the publication, the machine image has been published by UForge to your target environment. The published image can be found in the target cloud environment or container.

	.. note:: If your publication to AWS fails this may be due to your security settings. Your default security group for AWS must allow SSH. Contact your administrator.

	UForge does not launch instances in the target cloud environment. If you wish to launch an instance from this machine image, you should go to your target cloud environment console for further actions.

	.. note:: When you publish an image to Amazon or OpenStack, and you have the correct UForge entitlements, you will be able to launch your machine image directly from UForge using the ``Deploy`` option, without having to connect to your cloud platform. Refer to :ref:`deploy-machine-image`.

	.. note:: When you publish an image to VMware, the result will be a template and not a virtual machine.

	.. warning:: If your Fujitsu K5 publish failed, there may be data published to cloud, incurring costs, even if not visible on your cloud account. You should run a cleanup manually. Refer to `Chapter 2.7 Object storage <http://www.fujitsu.com/uk/Images/k5-iaas-api-reference-foundation-service.pdf>`_

