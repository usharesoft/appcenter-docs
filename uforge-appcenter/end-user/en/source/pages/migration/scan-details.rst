.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

Viewing the Details of Scan
---------------------------

You can view the details of the scan report that will display the packages that are present as well as the filesystem detecting on running source instance.

.. warning:: This is only supported for Linux based source instances

To view the details of a scan:

	1. Go to the ``Migration`` tab and click ``My Scans``.
	2. Click on the scan. All of the packages and non-native files will be listed.
	3. You can also filter the packages that have been modified (UForge AppCenter compares the packages scanned with its repo) by checking ``Only show the packages with changes``.
	4. To view the more details of a package, click on the package name and then the arrow.

.. note:: The number of packages between your scanned system and the one in UForge AppCenter will differ for several reasons. First, if you had more than 1 kernel only 1 is imported into UForge AppCenter. Also, UForge AppCenter adds files for install configuration and install profile.

