.. Copyright 2018 FUJITSU LIMITED

.. _migration-automatic:

Migrating Using Automatic Process
---------------------------------

You can use the ``Lift & Shift`` tab on the ``Migrations`` page to complete a migration automatically. When you run an automatic migration, you cannot modify any of the elements of the system (this is also referred to as "black box migration").

.. note:: White box migration using the ``Lift & Shift`` tab is not currently possible. Refer to :ref:`migration-scan` if you want to run a white box migration. 

The automatic migration process includes the following steps:

	1. Scan the source machine.
	2. Generate a machine image from the scan result.
	3. Publish the generated machine image to the selected target environment.

.. _migration-launch:

Launching an Automatic Migration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

All pre-requisites listed for migration using a scan are also applicable to ``Lift & Shift`` (refer to :ref:`migration-prereq`).

In order to run a migration:

	1. Go to the ``Lift & Shift`` tab on the ``Migrations`` page.
	2. Click on the ``migrate`` button on the top right.

	.. image:: /images/migration-button.png

	3. Enter the name of your migration. 

	.. image:: /images/migration-launch2.png

	4. From the drop-down menu select the target platform and type. Enter all other required fields, based on the target you have selected.
	5. Click ``next``.
	6. Follow the instructions on the UForge AppCenter pop-up window. 

	.. image:: /images/migration-popup-e.png

	7. Download binary locally by clicking ``Download``.
	8. Copy the binary on the target environment you want to migrate.
	9. Open a terminal window and login to the target environment.
	10. Launch the migrate command on the running target environment to start the migration.

		.. note:: For Linux migration, you can exclude non-native files and directories using ``-e`` parameter. This is not supported for Windows.

	11. Click ``next`` to view the migration status.
	12. You can return to the ``Lift & Shift`` page to view the status of your migrations.

	.. image:: /images/migration-status2.png

	.. note:: You should note that if you cancel a migration, this will stop the process of migration at the step currently being done. Therefore, for example, if the image generation is complete, it will be visible on your platform. Also, if publication has started, this may incur costs. You should check your cloud account. For more details on the constraints of publishing an image, refer to :ref:`appliance-publish-machine-image`.

	From the status page you can view more detailed information about the appliance scanned. Refer to :ref:`migration-details`.

.. _migration-details:

Viewing Details of an Automatic Migration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Once your automatic migration has completed, you can view the details of the status and details of the machine migrated from the ``Lift & Shift`` tab on the ``Migrations`` page.

	.. image:: /images/migration-details.png

From the status page you can view more detailed information about the appliance scanned by clicking: 

		* ``Details`` for more information about the published appliance. This will include the cloud ID, cloud account used for publication, if the publication succeeded. 
		* ``View Scan Details`` which will bring you to the details of the scan appliance on the ``Re-platform`` page. From here you can see all the packages and files that are part of the appliance.
		* ``View Generations Details`` which will bring you to the ``Generations`` page. This page lists ALL generations (not just from this migration). From here you can launch a publish.
		* ``View Publication Details`` which will bring you to the ``Generations`` page.


