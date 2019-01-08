.. Copyright 2019 FUJITSU LIMITED

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

	7. You can modify the information under ``Service configuration``. Any extra configuration information should be entered using YAML. 

	.. note:: If you make any modifications to the service configuration, remember to save.

	The section must be written with YAML blueprinting language. This language is defined by the open-source Cloudsoft AMP project. The ``service id`` attribute can be used in the YAML Extra configuration to retrieve some information, like IP adresses, hostname, etc. For example you can set "myService" as a service ID and then use it in the Extra configuration by using the AMP command ``$brooklyn:component("myService")``. In the ``customize.command`` attribute you can execute commands using the shell language. A customized command is not stored in the UForge appliance nor UForge images in cloud catalog. These commands will be executed with the user ``uforge`` during the deployment in the deployed instances; therefore, you will be allowed to update your scripts without regenerating UForge images. If you need root access for your commands, please use the `sudo`. Also, ensure that packages `sudo` is included inside your appliances OS profile. You can use your own variables by declaring them in the ``shell.env`` attribute. Then you can use them with this syntax: ``${MY_VARIABLE}``.

	8. Once you have created your blueprint, it will be automatically saved under the ``Blueprint Library``.

	.. note:: If you update any of the appliances used in the blueprint once the blueprint is created, this will be updated in the blueprint also. However, if your blueprint is already deployed, the changes will not be in the deployed blueprint.

