.. Copyright FUJITSU LIMITED 2016-2019

.. _btrfssubvolume-object:

btrfsSubvolume
==============

Describes a btrfs subvolume in a partitioning table. A btrfs subvolume describes the way a ``btrfs storage pool`` should be partitioned.

Attributes
~~~~~~~~~~

The list of attributes for ``btrfsSubvolume`` are:

	* ``btrfsStoragePoolUri`` (anyURI): the uri resource of the btrfs storage pool this subvolume uses
	* ``compress`` (string): the compression method of this btrfs storage pool
	* ``compressType``: the compression method type
	* ``mpoint`` (string): the mount point if no subvolumes
	* ``partitionTableUri`` (anyURI): the uri resource of the partition table object (see :ref:`partitiontable-object`)
	* ``uri`` (anyURI): the uri resource of this btrfs subvolumes object
	* ``subvolumes``: the list of subvolumes (partitions), see :ref:`partition-object`
	* ``subvolumesUri`` (anyURI): the uri resource to retrieve the list of subvolumes (partitions)
	* ``subvolumeUris`` (:ref:`UriList-object`): the list of uri resources of the subvolume objects (partitions)
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


