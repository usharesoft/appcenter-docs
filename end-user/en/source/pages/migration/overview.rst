.. Copyright 2018 FUJITSU LIMITED

.. _migration-workloads:

Migrating Live Workloads
========================

UForge AppCenter offers the capability to migrate a live system using two different methods:

* using ``Scans``. In this case there are three steps to migration: scan, generate and publish. Each step is done seperately by the user. When using scan to migrate, you can modify the appliance prior to the final migration.
* using ``Migration``. This automated process is only possible for certain formats.

In both cases, UForge will "deep scan" a live system and report back the meta-data of every file and package that makes up the running workload.

The following sub-sections describe in detail the different steps, requirements and limitations of ``Scans`` and ``Migrations``:

.. toctree::
   :maxdepth: 1

   process-overview
   blackbox-migration
   whitebox-migration
   migration-details
   scanning
   scan-view
   automatic-migration
   source-target-diffs
