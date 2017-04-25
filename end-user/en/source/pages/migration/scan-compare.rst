.. Copyright 2017 FUJITSU LIMITED

.. _migration-scan-compare:

Comparing Scans
---------------

As scans are just meta-data, you can compare two scans to determine their differences.  This can be used to detect the differences between two live machines (for example between staging and production) or to detect changes of the live machine over time.

.. warning:: This is only supported for Linux based source instances.

From the ``Migration`` tab:

	1. Click on the ``compare`` button (balance icon) at the top right hand side of the ``My Scans`` page.
	2. Select the source and target scan. 

		.. warning:: The source and target scan must be of the same type. For example, if the source scan is a scan with overlay, then it must be compared to a scan with overlay. Similarly, a scan without overlay can only be compared to a scan without overlay.

	.. image:: /images/scan-compare.png

	3. Click ``compare``.

UForge lists all the differences between the two systems. The results show the changes you would need to make manually to get your source scan to the state of the target scan.

	.. image:: /images/scan-compare-results.png

For example, if you have source scan A and target scan B, in the list, any items that are listed mean they are in scan B but not in scan A. Items that are in strikethrough mean that they were in your source scan A but not in scan B.
