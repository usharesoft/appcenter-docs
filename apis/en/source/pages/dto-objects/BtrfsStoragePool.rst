.. Copyright FUJITSU LIMITED 2016-2019

.. _btrfsstoragepool-object:

btrfsStoragePool
================

Describes a btrfs storage pool in a partitioning table. A volume group creates a pool of disk space from a collection of disks or partitions. This volume group can then be partitioned via a logical volume.

.. note:: Only partitions and LVM logical volumes of type btrfs can be added to a btrfs storage pool

Attributes
~~~~~~~~~~

The list of attributes for ``btrfsStoragePool`` are:

	* ``dataRaid`` (string): the data RAID level of this btrfs storage pool
	* ``label`` (string): the label of this btrfs storage pool
	* ``metadataRaid`` (string): the metadata RAID level of this btrfs storage pool
	* ``partitionTableUri`` (anyURI): the uri resource of the partition table object (see :ref:`partitiontable-object`)
	* ``partitionsUri`` (anyURI): the uri resources for each partition this btrfs storage pool uses
	* ``partitionUris`` (:ref:`UriList-object`): the list of uri resources for each partition this btrfs storage pool uses
	* ``raidType``: the RAID type for data and metadata
	* ``uri`` (anyURI): the uri resource of this btrfs storage pool
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


