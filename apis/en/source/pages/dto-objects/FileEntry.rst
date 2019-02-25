.. Copyright FUJITSU LIMITED 2016-2019

.. _fileentry-object:

fileEntry
=========

Holds the meta-data information of a file on a filesystem.

Attributes
~~~~~~~~~~

The list of attributes for ``fileEntry`` are:

	* ``checksum`` (string): the sha256 checksum value of the file
	* ``directory`` (boolean): boolean flag determining if this file is a directory
	* ``fullPath`` (string): the full canonical pathname of the file
	* ``group`` (string): the group name for this file (access)
	* ``linkTarget`` (string): the destination of a soft or hard link in a filesystem
	* ``name`` (string): the name of this file
	* ``owner`` (string): the filesystem owner of the file
	* ``parentUri`` (anyURI): the uri resource of the parent object this file entry is attached to
	* ``permissions`` (string): the file permissions
	* ``scannedInstanceId`` (long): the id of the parent scanned instance this object belongs to (see :ref:`scannedinstance-object`)
	* ``size`` (long): the size (in bytes) of this file
	* ``subEntries`` (long): the number of files if this file entry is a directory
	* ``uri`` (string): the uri resource of this file entry object
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


