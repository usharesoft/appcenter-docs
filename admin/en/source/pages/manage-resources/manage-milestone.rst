.. Copyright 2016 FUJITSU LIMITED

.. _manage-milestone:

Creating and Managing Milestones
--------------------------------

Milestones are used as a marker for a specific event, such as beta or GA for example. They appear on the GUI under OS package updates.

.. image: /images/milestone.jpg

In the figure above, the M indicates a Milestone. For CentOS, this is the versions (6.1, 6.2 etc). Milestones can be customized by the UForge administrator using the command line interface. 

To create or manage milestones using the CLI, use the command ``uforge os``. 

The available commands are:

	* milestone add 
	* milestone list
	* milestone modify 
	* milestone remove

In order to create a milestone called “beta” for Debian, run:

.. code-block:: shell

	# uforge os milestone add --dname Debian --darch i386 --dversion 6 --date 2014-01-01 12:00:00 --name beta –u $ADMIN -p $PASS
