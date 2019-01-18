.. Copyright 2019 FUJITSU LIMITED

.. _blueprint-deploy:

Deploying a Blueprint
---------------------

Once you have created a blueprint you can deploy it to a cloud platform. For details about creating a blueprint, refer to :ref:`blueprint-create`.

.. warning:: In order to deploy a blueprint, you must ensure that the appliances you used to create the blueprint have been published in the same region as you wish to deploy your blueprint. Refer to :ref:`appliance-publish-machine-image`.

To deploy a blueprint: 

	#. From the ``Blueprints`` page, select the blueprint you want to deploy.
	#. Click on ``deploy`` in the top right. 
	#. Enter the ``Name`` of the deployment.  
	#. Select the cloud account you want to use to deploy the blueprint. Currently only AWS is supported.

	#. From the drop-down menu, select the ``Region`` in which the blueprint should be deployed. This should be the same region used to publish the appliances that are included in the blueprint.
	#. On the bottom of the page, there is a list of the appliances used by your blueprint. For each of these appliances, you can see their current status. All the appliances need to be ready (an appliance is ready when its last version is published to the selected region). If an appliance is not in ``Ready`` state, you will not be able to publish. You can prepare it for deployment it directly from this page by clicking ``prepare``.

    			.. image:: /images/blueprint-prepare.png

    		The appliances that were not in ``Ready`` state will go to state ``Generation ongoing`` then to ``Publish ongoing``.

    		.. note:: Using the prepare button will automate the generation and publication of all the appliances that are not in ready state. However, you could also generate and publish each appliance seperately.

	#. Once all the appliances are ready, click on ``deploy`` in the top right. Once you launch the deployment, you will be redirected to the ``Deployments`` page. From here you can see the status of the blueprint.

		.. image:: /images/blueprint-deploy-status.png

	You can delete your deployment by clicking on the garbage icon next to the deployment name. This will stop and delete the deployment not only from UForge but also from your cloud account.

