.. Copyright FUJITSU LIMITED 2016-2019

.. _partition-object:

partition
=========

Holds the information of a physical or logical partition that is part of a partitioning table.

Attributes
~~~~~~~~~~

The list of attributes for ``partition`` are:

	* ``defaultSubvolume`` (boolean): boolean indicating whether this partition is default subvolume
	* ``dumpLocation`` (string): the location of the partition's dump file
	* ``fstype``: the filesystem type of the partition
	* ``growable`` (boolean): boolean indicating whether this partition is growable
	* ``label`` (string): partition label
	* ``logicalPartitions``: list of logical partitions (this needs to be an ``extended`` partition)
	* ``logicalPartitionsUri`` (anyURI): the uri resource to retrieve the logical partitions
	* ``logicalPartitionUris`` (:ref:`UriList-object`): the list of uris of each logical partition
	* ``mpoint`` (string): the mount point
	* ``name`` (string): the partition name
	* ``parentUri`` (anyURI): the uri resource of the parent object this partition is attached to
	* ``partitionTableUri`` (anyURI): the uri resource of the partition table
	* ``size`` (long): the size (in bytes) of the partition
	* ``uri`` (anyURI): the uri resource of this partition object
	* ``volumeOrder`` (int): the volume order
	* ``mbrBoot`` (boolean): boolean indicating whether this partition is bootable
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


