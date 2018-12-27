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

	4. Click the ``create`` button. The following window will be displayed. 

		.. image:: /images/

	You can choose to create and configure your blueprint either from:

		* Graphical Designer, as described in this example
		* YAML Editor

	By default, the blueprint does not have a name. To modify the name, select ``New application`` and in the right-hand configuration panel, enter the name. You can also enter an ID number.

	5. Select the appliances you want to add to the blueprint and drag them into the tree view. Your first element should be dragged onto the ``New application`` element. If you add an appliance while one is selected, it will be added as a child element of that appliance. You can drag and drop the elements as you wish. 

	You can modify the name and configuration info of all the appliances in the right-hand configuration panel.

	6. Once you have created your blueprint, it will be automatically saved under the ``Blueprint Library``.

	.. note:: If you update any of the appliances used in the blueprint once the blueprint is created, this will be updated in the blueprint also. However, if your blueprint is already deployed, the changes will not be in the deployed blueprint.



Using the YAML Editor to Create or Modify a Blueprint
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you choose to create or edit a blueprint with the YAML editor, you should note the following

	* The section must be written with YAML blueprinting language. This language is defined by the open-source Cloudsoft AMP project. 
	* The ``service id`` attribute can be used in the YAML Extra configuration to retrieve some information, like IP adresses, hostname, etc. For example you can set "myService" as a service ID and then use it in the Extra configuration by using the AMP command ``$brooklyn:component("myService")``. 
	* In the ``customize.command`` attribute you can execute commands using the shell language. A customized command is not stored in the UForge appliance nor UForge images in cloud catalog. These commands will be executed with the user ``uforge`` during the deployment in the deployed instances; therefore, you will be allowed to update your scripts without regenerating UForge images. 
	* If you need root access for your commands, use the `sudo`. Also, ensure that packages `sudo` is included inside your appliance's OS profile. 
	* You can use your own variables by declaring them in the ``shell.env`` attribute. Then you can use them with this syntax: ``${MY_VARIABLE}``.



Modifying the Blueprint Configuration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To modify the blueprint configuration, you can select any of the elements of the blueprint and modify the configuration elements in the right-hand panel.

You can either create a new custom configuration or use a standard one from the list.

.. note:: If you update any of the appliances used in the blueprint once the blueprint is created, this will be updated in the blueprint also. However, if your blueprint is already deployed, the changes will not be in the deployed blueprint.


