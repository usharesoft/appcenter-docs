.. Copyright 2018 FUJITSU LIMITED

.. _migration-workloads:

Migrating Live Workloads
========================

UForge AppCenter offers the capability to migrate a live system using two different methods:

* using ``Lift & Shift``. This is an automated process which covers three steps: scan, generate and publish.
* using ``Re-platform``. In this case there are three or four steps executed seperately by the user: scan, generate and publish. When using ``Re-platform`` to migrate, you can import the appliance and modify it prior to the final migration.

In both cases, UForge will "deep scan" a live system and report back the meta-data of every file and package that makes up the running workload.

The goal migration (either using ``Re-platform`` or ``Lift & Shift``) is to reproduce a near identical copy of the currently running workload.  However, there will always be small differences between the two workloads after migration is complete, notably some services are disabled or enabled depending on the target machine image being created (refer to :ref:`service-state`). For more information on the differences after migration, refer to :ref:`source-target-diffs`. 

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
