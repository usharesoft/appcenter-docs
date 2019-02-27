.. Copyright FUJITSU LIMITED 2016-2019

.. _disk-object:

disk
====

Holds the information of a physical disk that is part of a partitioning table. A disk may also contain physical and logical partitions.

Attributes
~~~~~~~~~~

The list of attributes for ``disk`` are:

	* ``blockSize`` (int): the disk block size (bytes)
	* ``name``: the disk name, for example ``sda``
	* ``partitions``: a list of partitions this disk has (see :ref:`partition-object`)
	* ``partitionsUri`` (anyURI): the uri resource to retrieve all the partitions for this disk
	* ``partitionTableUri`` (anyURI): the uri resource of the parent partition table
	* ``partitionType``: the disk type
	* ``partitionUris`` (:ref:`UriList-object`): the list of uris for the partitions this disk has
	* ``size`` (long): the disk size (in bytes)
	* ``uri`` (anyURI): the uri resource for this disk
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


