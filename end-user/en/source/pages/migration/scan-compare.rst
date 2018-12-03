.. Copyright 2018 FUJITSU LIMITED

.. _migration-scan-compare:

Comparing Scans
---------------

As scans are meta-data, you can compare two scans to determine their differences.  This can be used to detect the differences between two live machines (for example between staging and production) or to detect changes of the live machine over time.

.. warning:: This is only supported for Linux based source instances.

There are two methods to compare scans:

	* clicking the ``compare`` button (balance icon) at the top right hand side of the ``Re-platform`` page, then selecting the scans and clicking ``compare``.

		.. image:: /images/replatform-compare-icon.png

	* selecting a specific scan and going to the ``Delta`` tab. By default the selected scan will be compared to a base machine. You can then modify the scan to compare to from the ``Compared to`` section, on the bottom left hand of the page.

		.. image:: /images/replatform-delta-tab.png

.. warning:: The source and target scan must be of the same type. For example, if the source scan is a scan with overlay, then it must be compared to a scan with overlay. Similarly, a scan without overlay can only be compared to a scan without overlay.

UForge lists all the differences between the two systems on the ``Delta`` tab. The changes are color coded:

	* green for added
	* orange for modified
	* red for deleted

The number shown corresponds to the number of files that are different between the two scans. When you drill down into a folder (as shown below), you can see the number of files modified depicted as clickable squares, while the number of files modified in sub-folders are indicated by a number next to the colored dot.

In the example below, there are a total of 64 added files in the /etc folder, with 55 of these new files being added to sub-folders of /etc.

	.. image:: /images/scan-compare-example.png

If you click on any of the squares, you will see the details of the file that differs from the base scan.

	.. image:: /images/scan-compare-details.png

You can also see the changes as a list.

	.. image:: /images/scan-compare-list.png

Searching for Files in a Scan
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The ``delta`` tab of the ``Re-platform`` page allows you to search and filter the scan compare results.

If you click on one of the categories of scan results (``Added``, ``Modified`` or ``Deleted``), this will help you sort the results. In the example below, the ``Modified`` and ``Deleted`` categories have been clicked on to deselect, allowing you to see more quickly where the added files are.

	.. image:: /images/scan-compare-filter.png

If you are looking for a particular file name or type, then you can enter this in the search field and click on the search button to view the results.