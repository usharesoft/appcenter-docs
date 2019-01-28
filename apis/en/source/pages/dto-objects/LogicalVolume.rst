.. Copyright FUJITSU LIMITED 2016-2019

.. _logicalvolume-object:

logicalVolume
=============

Describes a logical volume in a partitioning table. A logical volume describes the way a ``volume group`` should be partitioned.

Attributes
~~~~~~~~~~

The list of attributes for ``logicalVolume`` are:

	* ``groupUri`` (anyURI): the uri resource of the logical group this logical volume uses
	* ``name`` (string): the name of this logical volume
	* ``partitionTableUri`` (anyURI): the uri resource of the partition table object (see :ref:`partitiontable-object`)
	* ``uri`` (anyURI): the uri resource of this logical volume object
	* ``volumes``: the list of volumes (partitions), see :ref:`partition-object`
	* ``volumesUri`` (anyURI): the uri resource to retrieve the list of volumes (partitions)
	* ``volumeUris`` (:ref:`UriList-object`): the list of uri resources of the volume objects (partitions)
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


