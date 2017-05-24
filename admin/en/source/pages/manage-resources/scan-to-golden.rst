.. Copyright 2017 FUJITSU LIMITED

.. _scan-to-golden:

Creating a Golden Image from Scan
---------------------------------

The easiest method to install Golden Images on your UForge AppCenter is to create a golden image from a scanned Windows instance.

Before you create a Golden Image from scan, you must have access to a machine which has the version of Windows installed which corresponds to the version of golden image you want to create. For example, if you want to create a golden image for Windows 2012R, then you must scan a machine with Windows 2012R installed. For more information on supported versions refer to :ref:`windows-versions`.

In order to create a Golden Image from scan:

	1. Install and configure Windows. For more information refer to :ref:`first-windows-install`.
	2. Install and configure applications.
	3. Scan a Windows machine.
	4. On the ``Migration`` page, select the scan you want to use as the base for your golden image.
	5. Click on the ``import`` button.
	6. Select ``import to golden image`` from the pop-up window and click ``import``.

	.. image:: /images/import-to-golden.png

	7. Enter the name and version you want to give to the golden image. You can also add a description (optional). Click ``import``.

	.. image:: /images/import-golden-name.png

	8. The progress will be shown. Once complete, the golden image will be visible under the ``Golden Images`` tab of the scan.

	.. image:: /images/golden-image-list.png	

Deleting a Golden Image Created from Scan
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To delete a golden image you created from scan: 

	1. Go to the ``OS Profile`` tab on the ``Administration`` page.
	2. Select the operating system for which the golden image was created.
	3. Click on the delete icon next to the golden image you want to create.

	.. image:: /images/delete-golden.png

.. note:: From the ``Golden Images`` tab on the ``Migration`` page you also have an option to delete. However, this does not delete the golden image from UForge, only the metadata. Therefore, when you want to create an appliance, the golden image will still appear under the OS Profile list.
