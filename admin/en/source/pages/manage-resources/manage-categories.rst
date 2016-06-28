.. Copyright 2016 FUJITSU LIMITED

.. _manage-categories:

Creating and Managing Categories
--------------------------------

Categories are used to organize projects. Users can use categories in order to filter projects in the appliance library.

Creating Custom Categories
~~~~~~~~~~~~~~~~~~~~~~~~~~

To create custom categories using GUI:

	1. Under the ``Administration`` tab, click ``Categories``.
	2. If you are an administrator to more than one organization, then you can choose the organization to administer from the drop-down menu.
	3. Enter the name of the category you want to add.
	4. Click ``add``.  

.. image: /images/create-category.jpg


Deleting Categories
~~~~~~~~~~~~~~~~~~~

If you want to limit the list of categories users can see and use, you can delete unwanted categories. To delete categories:

	1. Under the ``Administration`` tab, click ``Categories``.
	2. If you are an administrator to more than one organization, then you can choose the organization to administer from the drop-down menu.
	3. Select the categories you no longer want.  
	4. Click ``delete``.
	5. Click confirm in the pop-up window.

.. note:: If you want to delete all category customizations, click on reset. This will delete all the custom categories you created; however, this will also add any other default categories you might have deleted.

Managing Categories with CLI
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To create or manage categories with the CLI, use the command ``uforge org``. 

The available commands are:

	* category create               
	* category delete 
	* category list
	* category reset

.. warning:: If you reset the category list, all custom categories you created will be deleted.
