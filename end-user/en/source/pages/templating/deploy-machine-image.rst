.. Copyright 2017 FUJITSU LIMITED

.. _deploy-machine-image:

Deploying a Machine Image
---------------------------------

.. note:: You cannot deploy a Windows based appliance using the Deploy feature.

You can only deploy a machine image if you have AMP installed. For more information, refer to the official `Cloudsoft AMP documentation <https://docs.cloudsoft.io/>`_

In order to deploy a machine image to Amazon or to OpenStack, you must already have credentials to access that environment setup on UForge. For Amazon, only full accounts can be used, trial accounts are not supported for publishing images from UForge.

	1. If not already done, create an account for the target environment.  For more information, see :ref:`account-cloud-accounts`.
	2. Go to the appliance and click the ``Machine Images`` page. If you have not generated a machine image, you will need to do so as described in :ref:`appliance-generate-machine-image`.

	3. Click on the arrow pointing to the right to publish your image.

		.. image:: /images/machine-image-publish.png

	4. Following the instructions, choose the account and fill in any additional information required.

	.. warning:: If your appliance has any elements such as passwords that must be set up by the user or licenses accepted at installation, you will see a warning when you publish the image which indicates ``This image requires additional user interactions at startup`` (as shown below). In this case, you will not be able to use the deploy feature.

		.. image:: /images/machine-image-deploy-warning.png

	5. Click ``publish``.

	.. note:: Publishing an image to Amazon or OpenStack will be billed to the user account.

	6. The publication will take a few minutes to complete (depending on the size of the image and the network connectivity between UForge and the target environment). The publication progress is shown. At the end of the publication, the machine image has been published by UForge to your target environment.

	7. Under ``Published Machine Images``, next to your appliance, you will now see the deploy (play) icon. In order to deploy your machine image, click on this icon.

		.. image:: /images/machine-image-deploy-icon.png

	8. In the deploy view, enter the name of the deployment. Click on ``deploy``. This will connect to cloud platform and launch your machine image instance. Once deployed, a green button will appear under the ``Status`` column.

		.. image:: /images/machine-image-deploy-popup.png

	9. From the ``Deployments`` page you can see the instances deployed and their status. If the status is green it is up and running. If it is red, there has been an issue during deployment and/or it is stopped.

		.. image:: /images/machine-image-deploy-status.png

	.. note:: If you want to stop your deployment, you can do so by clicking on the delete (garbage) icon. This will stop it and remove the instance from your cloud.

	.. warning:: Terminate an OpenStack deployment may fail due to `a known issue in AMP <https://issues.apache.org/jira/browse/JCLOUDS-1318>`_. Click again on the delete (garbage) icon to work around the issue.
