.. Copyright 2019 FUJITSU LIMITED

.. _migration-workloads:

Migrating Live Workloads
========================

UForge AppCenter offers the capability to migrate a live system using two different methods:

* using ``Lift & Shift``. This is an automated process which covers three steps: scan, generate and publish.
* using ``Re-platform``. In this case the steps are executed seperately by the user: scan, update, generate and publish. To update, you must import as appliance and modify it prior to the final migration.

In both cases, UForge will "deep scan" a live system and report back the meta-data of every file and package that makes up the running workload.

The goal of ``Lift & Shift`` is to produce a near identical copy of the currently running workload.  However, there will always be small differences between the two workloads after migration is complete, notably some services are disabled or enabled depending on the target machine image being created (refer to :ref:`service-state`). For more information on the differences after migration, refer to :ref:`source-target-diffs`. 

The goal of ``Re-platform`` is to analyze an existing system and allow the user to make the necessary changes (potentially add or remove software, upgrade, re-configure etc).

The following sub-sections describe in detail the different steps, requirements and limitations of migrating your system, for each of the methods possible:

.. toctree::
   :maxdepth: 1

   migration-prereq
   process-overview
   automatic-migration
   migration-details
   scanning
   scan-windows
   scan-view
   source-target-diffs
