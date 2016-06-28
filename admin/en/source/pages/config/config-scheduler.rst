.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _config-scheduler:

Configuring the Scheduler
-------------------------

The scheduler can be configured to throttle the maximum number of:

	* generations allowed in parallel per compute node. 
	* publishes allowed in parallel per compute node. A ``publish`` is when a user wishes to upload and register a generated image to a particular cloud environment.
	* shares allowed in parallel per compute node. A ``share`` is when a user requests to share a template that they have in their private workspace.
	* live system scans allowed in parallel per compute node.  This is used for migrating live systems from one environment to another.

By default, after installing UForge using the deployment wizard, UForge will have X compute nodes.  The scheduler is configured to allow 1 generation that has been chosen during the deployment on each compute node.

You can re-configure the scheduler to have different scheduling policies for different job types for each compute node. This is done be declaring a resource with a ``nature`` in OAR.  Each ``nature`` corresponds to a specific job type. For example by declaring 4 resources with the nature ID ``0`` for compute node ``node1`` will configure the scheduler to allow up to 4 parallel generations. The following table shows the mapping between the different job types and the nature ID.

+-------------------------------------------+-----------------+
| Job Type                                  | Nature ID       | 
+===========================================+=================+
| Image Generation Job Type                 |     0           | 
+-------------------------------------------+-----------------+
| Publish Image Job Type                    |	  1           |
+-------------------------------------------+-----------------+
| Share Job Type                            |	  2           |
+-------------------------------------------+-----------------+
| System Scan Job Type                      |     3           |
+-------------------------------------------+-----------------+
| Update cache repo (cron job)              |     4           |
+-------------------------------------------+-----------------+
| Update_repos_pkgs.sh (Spider) (cron job)  |     5           |
+-------------------------------------------+-----------------+

Viewing Current Resources
~~~~~~~~~~~~~~~~~~~~~~~~~

To view all the current resources in the scheduler, log in to the oar scheduler node as root and run the command ``oarnodes``:

.. code-block:: shell

	# ssh root@<ip address of the node>
	# oarnodes
	network_address : compute1.example.com
	resource_id : 1
	state : Alive
	properties : deploy=NO, besteffort=YES, cpuset=0, desktop_computing=NO, nature=0, network_address=iso, type=default, cm_availability=0

	network_address : compute1.example.com
	resource_id : 4
	state : Alive
	properties : deploy=NO, besteffort=YES, cpuset=0, desktop_computing=NO, nature=1, network_address=vm, type=default, cm_availability=0

This provides the basic information of each resource including:

	* ``network_address``: the compute node this resource is attached to 
	* ``resource_id`` is the ID of the node
	* ``state`` is the current state of the resource
	* ``properties``: the main properties of the resource, including the nature ID that determines the job type this resource is providing

Adding or Updating a Resource
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To add or update a resource, first log in to the oar scheduler node as ``root``.

To add a resource to compute node ``node1`` allowing to generate an image:

.. code-block:: shell

	# oarnodesetting -a -h node1 -p cpuset=0,nature=0;
	# oarnodes
	network_address : node1
	resource_id : 92
	state : Alive
	properties : deploy=NO, besteffort=YES, cpuset=0, desktop_computing=NO, nature=0, network_address=vm, type=default, cm_availability=0

To change a current resource (resource_id: 92) to a different job type (for example publish images)::

	# oarnodesetting -h node1 -r 92 -p nature=1;

.. _delete-job:

Deleting a Job
~~~~~~~~~~~~~~

In case of a problem, you may want to delete a job which is stuck in a waiting state.

In this case, run::

	# oardel <job_id>

