.. Copyright FUJITSU LIMITED 2016-2019

.. _partitiontable-object:

partitionTable
==============

Describes a complete partitioning table for an appliance template. This partitioning table is part of the :ref:`installprofile-object`.

Attributes
~~~~~~~~~~

The list of attributes for ``partitionTable`` are:

	* ``btrfsStoragePools``: the list of btrfs storage pools for this partition table (see :ref:`btrfsstoragepool-object`)
	* ``btrfsStoragePoolsUri`` (anyURI): the uri resource to retrieve the btrfs storage pools in this partition table
	* ``btrfsStoragePoolUris`` (:ref:`UriList-object`): the list of uri resources for each btrfs storage pool in this partition table
	* ``btrfsSubvolumes``: the list of btrfs subvolumes (partitions) in this partition table
	* ``btrfsSubvolumesUri`` (anyURI): the uri resource to retrieve the btrfs subvolumes in this partition table
	* ``btrfsSubvolumeUris`` (:ref:`UriList-object`): the list of uri resources for each btrfs subvolume in this partition table
	* ``disks``: the list of disks this partition table has (see :ref:`disk-object`)
	* ``disksUri`` (anyURI): the uri resource to retrieve the disks for this partition table
	* ``diskUris`` (:ref:`UriList-object`): the list of uris for each disk of the partition table
	* ``parentUri`` (anyURI): the uri resource of the parent this partition table is attached to
	* ``logicalGroups``: the list of logical groups for this partition table (see :ref:`logicalgroup-object`)
	* ``logicalGroupsUri`` (anyURI): the uri resource to retrieve the logical groups in this partition table
	* ``logicalGroupUris`` (:ref:`UriList-object`): the list of uri resources for each logical group in this partition table
	* ``logicalVolumes``: the list of logical volumes (partitions) in this partition table
	* ``logicalVolumesUri`` (anyURI): the uri resource to retrieve the logical volumes in this partition table
	* ``logicalVolumeUris`` (:ref:`UriList-object`): the list of uri resources for each logical volume in this partition table
	* ``uri`` (anyURI): the uri resource of this partition table object
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


