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

		.. image:: /images/blueprint-composer-blank.png

	You can choose to create and configure your blueprint either from:

		* Graphical Designer, as described in this example
		* YAML Editor

	By default, the application does not have a name. To modify the name, select ``New application`` and in the right-hand configuration panel, enter the name. You can also enter an ID number.

		.. note:: The blueprint application name and the name of the blueprint in UForge Blueprint Library can be different.

	5. Select the appliances you want to add to the blueprint and drag them into the tree view. Your first element should be dragged onto the ``New application`` element. If you add an appliance while one is selected (red circle around appliance), it will be added as a child element of that appliance. You can drag and drop the elements as you wish. To add applications you can also click on an application from the left panel and click ``add to...``. 

	The following is a sample blueprint.

		.. image:: /images/blueprint-composer.png

	You can modify the name and configuration info of all the appliances in the right-hand configuration panel. To close this configuration panel, click X. To reopen the panel, click on the square in the top right.

	6. Once you have created your blueprint, click on ``save``. It will now be visible in the ``Blueprint Library``.

	.. note:: If you update any of the appliances used in the blueprint once the blueprint is created, this will be updated in the blueprint also. However, if your blueprint is already deployed, the changes will not be in the deployed blueprint. For more information about deploying blueprints, refer to :ref:`blueprint-deploy`.


Using the YAML Editor to Create or Modify a Blueprint
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you choose to create or edit a blueprint with the YAML editor, you should note the following:

The section must be written with YAML blueprinting language. This language is defined by the open-source Apache Brooklyn project. For more information, you can refer to `Apache Brooklyn documentation <https://brooklyn.apache.org/v/latest/blueprints/index.html>`_.

The ``id`` attribute can be used in the YAML configuration to retrieve information from an item in the services list. For example you can set ``myService`` as a service ID and then use it in the ``shell.env`` configuration of another service using the following Brooklyn command:

	.. code-block: shell

		services:
			- type: linux-appliance
			    id: myService
			    brooklyn.config:
			      applianceUUID: dd3d4a97-0505-11e9-8436-0050568818b3
			- type: linux-appliance
			    brooklyn.config:
			      applianceUUID: c6a74128-0505-11e9-8436-0050568818b3
			      shell.env:
			        MY_SERVICE_IP: '$brooklyn:component("myService").attributeWhenReady("host.address")'
			      customize.command: sudo /opt/myApp/configMyServiceIp.sh "$MY_SERVICE_IP"

In the ``customize.command`` attribute you can execute commands using the shell language. A customized command is not stored in the UForge appliance nor UForge images in cloud catalog. These commands will be executed with the user ``uforge`` during the deployment in the deployed instances; therefore, you will be allowed to update your scripts without regenerating UForge images. 

If you need root access for your commands, use the `sudo`. Also, ensure that packages `sudo` is included inside your appliance's OS profile. 

You can use your own variables by declaring them in the ``shell.env`` attribute. Then you can use them with this syntax: ``${MY_VARIABLE}``.



Modifying the Blueprint Configuration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To modify the blueprint configuration, you can select any of the elements of the blueprint and modify the configuration elements in the right-hand panel.

	.. image:: /images/blueprint-configuration.png

You can either create a new custom configuration or use a standard one from the list.

.. note:: If you update any of the appliances used in the blueprint once the blueprint is created, this will be updated in the blueprint also. However, if your blueprint is already deployed, the changes will not be in the deployed blueprint.


