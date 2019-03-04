.. Copyright FUJITSU LIMITED 2016-2019

.. _scanstats-object:

scanStats
=========

Holds statistical data on all the scans carried out by an user.

Attributes
~~~~~~~~~~

The list of attributes for ``scanStats`` are:

	* ``currGenerated`` (int): the number of scan generations the user still has access to
	* ``currImported`` (int): the number of appliance templates imported from scans the user still has access to
	* ``currOSUsage``: number of times a specific OS has been used when scanning
	* ``currScans`` (int): the number of scans currently available in the user account
	* ``totalGenerated`` (int): the number of generations done from a scan
	* ``totalImported`` (int): the number of appliance imports done from a scan
	* ``totalOSUsage``: the number of times a specific distribution has been scanned
	* ``totalScans`` (int): the number of scans done for a specific user account (counting deleted scans)


