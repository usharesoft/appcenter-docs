.. Copyright 2018 FUJITSU LIMITED

.. _migration-automatic:

Migrating Using Automatic Process
---------------------------------

You can use the ``Migrations`` tab to complete a migration automatically. When you run an automatic migration, you cannot modify any of the  (this is also referred to as "black box migration").

.. note:: The ``Migrations`` tab for automated migration is only supported for the following target platforms: K5, Microsoft Azure, OpenStack, SUSE Cloud, VMware Vcenter.

.. note:: Migration using the ``Migrations`` page is not currently possible. Refer to :ref:`migration-prereq`. 

This process includes the following steps:

	1. Scan the source machine.
	2. Report the scan results to UForge AppCenter, where the platform analyzes the report. The scan differentiates between known packages and extra files. 
	3. The results are used to build an archive. The extra files are only included in the archive if the user is performing a scan with overlay. The archive is sent back to the platform.
	4. The archive is uncompressed, and the information is stored in the database as a ``Migration``.

The migration results can be used to generate machine images. The generated machine image can then be published to the target environment and instances can be provisioned.

Launching an Automatic Migration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. note:: The ``Migrations`` tab for automated migration is only supported for the following target platforms: K5, Microsoft Azure, OpenStack, SUSE Cloud, VMware Vcenter.

All pre-requisites listed for migration using a scan are also applicable to ``Migrations`` (refer to :ref:`migration-prereq`).

In order to run a migration:

	1. Go to the ``Migrations`` tab.
	2. Click on the ``migrate`` button on the top right.

	.. image:: /images/migration-launch.png

	3. Enter the name of your migration. 
	4. From the drop-down menu select the target platform and type. Enter all other required fields, based on the target you have selected.

	.. note:: The ``Migrations`` tab for automated migration is only supported for the following target platforms: K5, Microsoft Azure, OpenStack, SUSE Cloud, VMware Vcenter.

	5. Click ``launch``.
	6. Follow the instructions on the UForge AppCenter pop-up window. 

	.. image:: /images/migration-popup.png

	7. Download binary locally by clicking ``Download``.
	8. Copy the binary on the target environment you want to migrate.
	9. Open a terminal window and login to the target environment.
	10. Launch the migrate command on the running target environment to start the migration.
	11. Click ``next`` to view the migration status.
	12. You can return to the ``Migrations`` main page to view the status of your migrations.

