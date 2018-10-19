.. Copyright 2018 FUJITSU LIMITED

.. _migration-scan-compare:

Comparing Scans
---------------

As scans are meta-data, you can compare two scans to determine their differences.  This can be used to detect the differences between two live machines (for example between staging and production) or to detect changes of the live machine over time.

.. warning:: This is only supported for Linux based source instances.

There are two methods to compare scans:

	* clicking the ``compare`` button (balance icon) at the top right hand side of the ``Re-platform`` page, then selecting the scans.

		.. image:: /images/replatform-compare-icon.png

	* selecting a specific scan. By default the selected scan will be compared to a base machine. You can then modify the scan to compare to from the ``Compared to`` selection.

		.. image:: /images/replatform-delta-tab.png

.. warning:: The source and target scan must be of the same type. For example, if the source scan is a scan with overlay, then it must be compared to a scan with overlay. Similarly, a scan without overlay can only be compared to a scan without overlay.

UForge lists all the differences between the two systems on the ``delta`` tab. The changes are color coded:

	* blue for added
	* red for deleted
	* orange for modified

The number shown corresponds to the number of files that are different between the two scans. When you drill down into a folder (as shown below), you can see the number of files modified depicted as clickable squares, while the number of files modified in sub-folders are indicated by a number next to the colored dot.

In the example below, there are a total of 65 added files in the /etc folder, with 56 of these new files being added to sub-folders of /etc.

	.. image:: /images/scan-compare-example.png

If you click on any of the squares, you will see the details of the file that differs from the base scan.

	.. image:: /images/scan-compare-details.png