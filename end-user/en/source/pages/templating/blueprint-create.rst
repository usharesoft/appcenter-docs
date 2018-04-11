.. Copyright 2018 FUJITSU LIMITED

.. _blueprint-create:

Creating a Blueprint
--------------------

A blueprint is a multi-node application, based on Linux. It contains UForge appliances and MySoftware components. It configures dependencies between services, network topology, lifecycle and policies. Once your blueprint is created, it can be deployed on multiple cloud platforms (refer to :ref:`blueprint-deploy`)

.. note:: Before you can create a blueprint, you must already have appliances created on your UForge. Refer to :ref:`appliance-create`.

To create a new blueprint: 

	1. Select ``Blueprints`` icon on the left.
	2. On the ``Blueprint Library`` page, click on ``create`` in the top right. 
	3. Enter the ``Name`` and ``Version`` of the appliance.  

		.. image:: /images/blueprint-create.png

	4. Click the ``create`` button. 

	5. Click on the appliances you want to add to the blueprint. If you add the same appliance twice, it will be saved with the same name with ``_n+1`` added at the end. You can edit the name of the appliances in the ``Service configuration`` section.

	6. You should now see a window similar to the following.

		.. image:: /images/blueprint-services.png

		.. note:: If you click on the appliance name in the ``Services`` section, you will be redirected to the appliance details under ``Apps``.

	7. You can modify the information under ``Service configuration``. Any extra configuration information should be entered using YAML. If you make any modifications to the service configuration, remember to save.

	8. Once you have created your blueprint, it will be automatically saved under the ``Blueprint Library``.

	.. note:: If you update any of the appliances used in the blueprint once the blueprint is created, this will be updated in the blueprint also. However, if your blueprint is already deployed, the changes will not be in the deployed blueprint.

