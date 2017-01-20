.. Copyright 2017 FUJITSU LIMITED

.. _scannedinstance-object:

scannedInstance
===============

Used to group together one or more scan reports from the a running system.

Attributes
~~~~~~~~~~

The list of attributes for ``scannedInstance`` are:

	* ``distribution`` (:ref:`distribution-object`): the operating system detected on the live system (see :ref:`distribution-object`)
	* ``group`` (string): the group name (reserved for future use)
	* ``name`` (string): the name of the live system
	* ``parentUri`` (anyURI): the uri resource of the parent object this scanned instance belongs to
	* ``platformType`` (string): the type of platform the scanned instance is hosted in
	* ``ramSize`` (int): the size of the virtual memory detected on the source system
	* ``scans``: the list of scan reports carried out on this live system (see :ref:`scan-object`)
	* ``scansUri`` (anyURI): the uri resource to retrieve all the scan reports
	* ``totalScans`` (int): the number of scans carried out on this live system
	* ``uri`` (anyURI): the uri resource of this scanned instance
	* ``created`` (dateTime): the created date of the object
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


