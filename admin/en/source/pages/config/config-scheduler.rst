.. Copyright 2018 FUJITSU LIMITED

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
| Migration Job Type                        |     6           |
+-------------------------------------------+-----------------+

By default UForge (during the deployment) populates oarnodesetting, and uses the "overflow" mode. If you want to modify this, refer to :ref:`changing-oar-config`.

Viewing Current Resources
~~~~~~~~~~~~~~~~~~~~~~~~~

To view all the current resources in the scheduler, log in to the oar scheduler node as root and run the command ``oarnodes``:

.. code-block:: shell

	$ ssh root@<ip address of the node>
	$ oarnodes
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

To add a resource to compute node ``node1`` and allow image generation (``nature=0``):

.. code-block:: shell

	$ oarnodesetting -a -h node1 -p cpuset=0,nature=0;
	$ oarnodes
	network_address : node1
	resource_id : 92
	state : Alive
	properties : deploy=NO, besteffort=YES, cpuset=0, desktop_computing=NO, nature=0, network_address=vm, type=default, cm_availability=0

To change a current resource (resource_id: 92) to a different job type (for example publish images, which is nature ID 1)::

	$ oarnodesetting -h node1 -r 92 -p nature=1;

Removing a Resource
~~~~~~~~~~~~~~~~~~~

To remove a resource, first log in to the oar scheduler node as ``root``.

To remove a resource from the compute node, run the following commands:

.. code-block:: shell

	$ oarnodesetting -s Dead -r <resource_id>
	$ oarremoveresource <resource_id>

.. _changing-oar-config:

Changing the OAR Configuration to Round-Robin
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

By default UForge (during the deployment) populates oarnodesetting using the "overflow" mode. This means that when a oar-node is full (in term of jobs), UForge overflows to the second node, and so on. This fits well with a typical topology where there is one powerful generation node and other smaller generation nodes (used in case of overflow).

This being said, it is not the role of UForge to replace the role of the scheduler and manage all the different topologies (Overflow mode, Alternative mode, custom mode, etc.). UForge integrates the oar scheduler which can be configured according to the user requirements.

So, by default, when a new OAR job is launched, it is processed on one OAR node until the number of simultaneous executions exceeds the set value, and the next OAR node is used when the number of simultaneous executions exceeds the set value.

If you want to have a round robin assignation of jobs, you can change the OAR configuration as follows.

	1. In the oar-server node (and only on the node where oar-server runs, not on the other compute nodes), edit ``/etc/oar/oar.conf``.

	2. Comment the ``SCHEDULER_RESOURCE_ORDER=[...]`` line and add the new one with other parameters:

	.. code-block:: shell

		#SCHEDULER_RESOURCE_ORDER="scheduler_priority ASC, state_num ASC, available_upto DESC, suspended_jobs ASC, network_address DESC, resource_id ASC"

		SCHEDULER_RESOURCE_ORDER="resource_id ASC"

	3. Restart the oar-server using the command: ``service oar-server restart``. The following example orders the job scheduling by ``resource_id`` in ascending order. This will work only if your oarnodesetting are populated by nature and server.

	.. code-block:: shell

		network_address : oarnode1
		resource_id : 1
		state : Alive
		properties : deploy=NO, besteffort=YES, cpuset=0, desktop_computing=NO, available_upto=0, nature=0, network_address=oarnode1, last_available_upto=0, type=default

		network_address : oarnode2
		resource_id : 2
		state : Alive
		properties : deploy=NO, besteffort=YES, cpuset=0, desktop_computing=NO, available_upto=0, nature=0, network_address=oarnode2, last_available_upto=0, type=default

		network_address : oarnode1
		resource_id : 3
		state : Alive
		properties : deploy=NO, besteffort=YES, cpuset=0, desktop_computing=NO, available_upto=0, nature=0, network_address=oarnode1, last_available_upto=0, type=default

		network_address : oarnode2
		resource_id : 4
		state : Alive
		properties : deploy=NO, besteffort=YES, cpuset=0, desktop_computing=NO, available_upto=0, nature=0, network_address=oarnode2, last_available_upto=0, type=default

		network_address : oarnode1
		resource_id : 234
		state : Alive
		properties : deploy=NO, besteffort=YES, cpuset=0, desktop_computing=NO, available_upto=0, nature=1, network_address=oarnode1, last_available_upto=0, type=default

		network_address : oarnode2
		resource_id : 235
		state : Alive
		properties : deploy=NO, besteffort=YES, cpuset=0, desktop_computing=NO, available_upto=0, nature=1, network_address=oarnode2, last_available_upto=0, type=default
		[...]

	In this example, if you look the ``nature=0`` (in the properties). You have:

	.. code-block:: shell

		oarnode1 = id 1
		oarnode2 = id 2
		oarnode1 = id 3
		oarnode2 = id 4
		[...]

	For ``nature=1``, you have:

	.. code-block:: shell

		oarnode1 = id 234
		oarnode2 = id 235
		oarnode1 = id 236
		[...]

	In this case the first generation will be handled by the ``oarnode1`` and the second by the ``oarnode2`` (same for other types, publication is 1, scan is 3, etc.)


.. _delete-job:

Deleting a Job
~~~~~~~~~~~~~~

In case of a problem, you may want to delete a job which is stuck in a waiting state.

In this case, run::

	$ oardel <job_id>

