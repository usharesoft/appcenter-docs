.. Copyright FUJITSU LIMITED 2016-2019

.. _scancompare-object:

scanCompare
===========

Holds all the results of a comparison between two scans.

Attributes
~~~~~~~~~~

The list of attributes for ``scanCompare`` are:

	* ``extraFiles``: a list of :ref:`scannedfile-object` files that are not part of any native package on the file system
	* ``filesUri`` (anyURI): a uri resource to retrieve all the filesystem files reported by the scan process
	* ``scanAUri`` (anyURI): the uri of the first scan to compare
	* ``scanBUri`` (anyURI): the uri of the second scan to compare
	* ``packages``: the list of :ref:`package-object` objects listed in the scan report
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


