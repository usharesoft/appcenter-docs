.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _migration-scan-compare:

Comparing Scans
---------------

As scans are just meta-data, you can compare two scans to determine their differences.  This can be used to detect the differences between two live machines (for example between staging and production) or to detect changes of the live machine over time.

From the ``Migration`` tab:

	1. Click on the ``compare`` button at the top right hand side.
	2. Select the source and target scan. To do so, click the arrow next to the name of the scans you want to compare and select.

	.. image:: /images/migration-compare-scan.jpg

	3. Click ``compare``

UForge lists all the differences between the two systems. The results show the changes you would need to make manually to get your source scan to the state of the target scan.

For example, if you have source scan A and target scan B, in the list, any items that are listed mean they are in scan B but not in scan A. Items that are in strikethrough mean that they were in your source scan A but not in scan B.
