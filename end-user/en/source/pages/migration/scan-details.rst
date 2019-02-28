.. Copyright 2019 FUJITSU LIMITED

.. _migration-scan-details:

Viewing the Details of Scan
---------------------------

You can view the details of the scan report that will display the packages that are present as well as the filesystem detected on the scanned source instance. The information available depends on whether the scanned instance is Linux-based or Windows-based.

Linux-based
~~~~~~~~~~~

To view the details of a scanned Linux-based instance:

	1. Go to the ``Re-platform`` tab on the ``Migrations`` page.
	2. Click on the scan to view the details. 

	.. image:: /images/scan-view-details2.png

	3. All of the packages and non-native files are listed under the ``Packages`` tab.

	.. image:: /images/scan-packages2.png

	4. You can also filter the packages that have been modified (UForge AppCenter compares the packages scanned with its repo) by checking ``Only show the packages with changes``.
	5. To view the details of a package, click on the package name and then the arrow.

	.. note:: The number of packages between your scanned system and the one in UForge AppCenter will differ for several reasons. First, if you had more than 1 kernel only 1 is imported into UForge AppCenter. Also, UForge AppCenter adds files for install configuration and install profile.

	6. From this page you can now import as appliance (:ref:`migration-scan-import`) or generate an image (:ref:`migration-scan-generate`).

Windows-based
~~~~~~~~~~~~~

.. note:: The details of the scan are for information purposes only. They cannot be modified. The following applications in your scanned system are listed in the Applications tab.

	* Applications displayed in Control Panel > Programs and Features page
	* Windows Store applications

To view the details of a scanned Windows-based instance:

	1. Go to the ``Re-platform`` tab on the ``Migrations`` page.
	2. Click on the scan to view the details.
	3. To view the Windows applications, go to the ``Applications`` tab.

	.. image:: /images/scan-windows-applications.png

	4. To view the Windows services, go to the ``Services`` tab.

	.. image:: /images/scan-windows-services.png

	5. From this page you can now import as appliance (:ref:`migration-scan-import`) or generate an image (:ref:`migration-scan-generate`).
