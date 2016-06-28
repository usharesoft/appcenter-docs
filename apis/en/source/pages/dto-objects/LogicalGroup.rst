.. Copyright 2016 FUJITSU LIMITED

.. _logicalgroup-object:

logicalGroup
============

Describes a logical volume group in a partitioning table. A volume group creates a pool of disk space from a collection of disks or partitions. This volume group can then be partitioned via a logical volume. .. note:: Only disks and partitions of type lvm and logical partitions can be added to a volume group

Attributes
~~~~~~~~~~

The list of attributes for ``logicalGroup`` are:

	* ``diskUris`` (:ref:`UriList-object`): the list of uri resources for each disk this logical group uses
	* ``groupName`` (string): the logical group name
	* ``partitionTableUri`` (anyURI): the uri resource of the partition table object (see :ref:`partitiontable-object`)
	* ``partitionUris`` (:ref:`UriList-object`): the list of uri resources for each partition this logical group uses
	* ``uri`` (anyURI): the uri resource of this logical group
	* ``created`` (dateTime): the created date of the object
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


