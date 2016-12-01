.. Copyright 2016 FUJITSU LIMITED

.. _migration-scan-details:

Viewing the Details of Scan
---------------------------

You can view the details of the scan report that will display the packages that are present as well as the filesystem detected on the scanned source instance. The information available depends on whether the scanned instance is Linux-based or Windows-based.

Linux-based
~~~~~~~~~~~

To view the details of a scanned Linux-based instance:

	1. Go to the ``Migration`` tab and click ``My Scans``.
	2. Click on the scan. All of the packages and non-native files will be listed.

	.. image:: /images/scan-details.png

	3. You can also filter the packages that have been modified (UForge AppCenter compares the packages scanned with its repo) by checking ``Only show the packages with changes``.
	4. To view the more details of a package, click on the package name and then the arrow.

.. note:: The number of packages between your scanned system and the one in UForge AppCenter will differ for several reasons. First, if you had more than 1 kernel only 1 is imported into UForge AppCenter. Also, UForge AppCenter adds files for install configuration and install profile.


Windows-based
~~~~~~~~~~~~~

To view the details of a scanned Windows-based instance:

.. note:: The details of the scan are for information purposes only. They cannot be modified.

	1. Go to the ``Migration`` tab and click ``My Scans``.
	2. Click on the scan.
	3. To view the Windows applications, go to the ``Applications`` tab.

	.. image:: /images/scan-windows-applications.png

	4. To view the Windows services, go to the ``Services`` tab.

	.. image:: /images/scan-windows-services.png