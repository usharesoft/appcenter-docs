.. Copyright 2018 FUJITSU LIMITED

.. _deploy-machine-image:

Deploying a Machine Image
--------------------------

.. note:: Currently, Linux machine images published on Amazon, OpenStack, Cloudstack and Microsoft Azure Resource Manager can be deployed from UForge. For Windows based appliances, deploy is supported only for the images published on Amazon.

You can only deploy a machine image if you have AMP installed. For more information on installing AMP, refer to the official `Cloudsoft AMP documentation <https://docs.cloudsoft.io/>`_

The credentials to deploy a machine image are those used to publish it.
For Amazon, only full accounts can be used, trial accounts are not supported for publishing images from UForge.

	1. If not already done, create an account for the target environment.  For more information, see :ref:`account-cloud-accounts`.
	2. Go to the appliance and click the ``Machine Images`` page. If you have not generated a machine image, you will need to do so as described in :ref:`appliance-generate-machine-image`.

	3. Click on the arrow pointing to the right to publish your image.

		.. image:: /images/machine-image-publish.png

	4. Following the instructions, choose the account and fill in any additional information required.

	.. warning:: If your appliance has any elements such as passwords that must be set up by the user or licenses accepted at installation, you will see a warning when you publish the image which indicates ``This image requires additional user interactions at startup`` (as shown below). In this case, you will not be able to use the deploy feature.

		.. image:: /images/machine-image-deploy-warning.png

	5. Click ``publish``.

	.. note:: Publishing an image will be billed to the user account.

	6. The publication will take a few minutes to complete (depending on the size of the image and the network connectivity between UForge and the target environment). The publication progress is shown. At the end of the publication, the machine image has been published by UForge to your target environment.

	7. Under ``Published Machine Images``, next to your appliance, you will now see the deploy (play) icon. In order to deploy your machine image, click on this icon.

		.. image:: /images/machine-image-deploy-icon.png

	8. In the deploy view, enter the name of the deployment. Click on ``deploy``. This will connect to cloud platform and launch your machine image instance. Once deployed, a green button will appear under the ``Status`` column.

    For Linux images, you will need to input the ``Instance Name``, ``Minimal number of cores`` and ``Minimal RAM`` values

		.. image:: /images/machine-image-deploy-popup-linux.png

    For Windows images, you will need to supply an additional ``User name`` and ``User password`` for an administrator account to be used for ``WinRM``
        
		.. image:: /images/machine-image-deploy-popup-windows.png

        .. warning:: Some combinations of ``Minimal number of cores`` and ``Minimal RAM`` might not work for some regions due to `a known issue im AMP <https://issues.apache.org/jira/browse/BROOKLYN-582>`_. To work around this issue, please select a different value of ``cores`` and/or ``RAM``, or retry with a different region.  

	9. From the ``Deployments`` page you can see the instances deployed and their status. If the status is green it is up and running. If it is red, there has been an issue during deployment and/or it is stopped.

		.. image:: /images/machine-image-deploy-status.png

	.. note:: Using this procedure, all deployed Linux virtual machines will have ssh port (22) opened in their security group. All deployed Windows virtual machines will have RDP port (3389) and WinRM ports (5985, 5986) opened in their security group.

	.. note:: For Windows images, if you have customized firewall settings then the following TCP ports need to be opened: 3389 (RDP) and 5985 (WinRM) 

	.. note:: For all deployed Windows virtual machines, if WinRM service is not enabled by default, then it will be activated during the deployment process.

	.. note:: If you want to stop your deployment, you can do so by clicking on the delete (garbage) icon. This will stop it and remove the instance from your cloud.

	.. warning:: Terminating an OpenStack deployment may fail due to `a known issue in AMP <https://issues.apache.org/jira/browse/JCLOUDS-1318>`_. Click again on the delete (garbage) icon to work around the issue.

    .. warning:: For Windows Server 2008R2, you will need to run a command in ``PowerShell`` on the source machine before scanning ``winrm set winrm/config/service '@{AllowUnencrypted="true"}'``. This command will disable WinRM encryption over HTTP which is not supported by AMP. More information can be found on the Cloudsoft AMP documentation, in section `WinRM Connectivity Diagnostics <https://docs.cloudsoft.io/blueprints/base-blueprints/winrm/client.html#winrm-connectivity-diagnostics>`_.

.. _list-deployment:

Listing Deployed Machine Images
-------------------------------

In order to view a list of the deployed machine images, go to the ``Deployments`` tab. A window similar to the following will appear.

.. image:: /images/deployment-list.png

From this window you can see the cloud platform the published machine image was deployed to, the name of the deployed instance, the location of the machine image published, the source machine image (Appliance or Scan) and the state of the deployed instance on the cloud platform.

	.. note:: If you want to stop your deployed instance, you can do so by clicking on the delete (garbage) icon. This will stop it and remove the instance from your cloud.

If you click on the application name you will see the details of the instance that has been deployed, including the name of the instance and the IP address of the machine.

.. image:: /images/deployment-info.png

If you click on the ``i`` next to the hostname, a popup will appear indicating the IP address, the user name and some additional informations based on the operating system to show how to connect to that instance:

For Linux instances the SSH key (if any) and an example code will also be given to connect to your instance.

.. image:: /images/deployment-info-popup.png

For Windows instances a link for downloading RDP file is provided:

.. image:: /images/deployment-rdp-popup.png

