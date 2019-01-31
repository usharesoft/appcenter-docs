.. Copyright FUJITSU LIMITED 2016-2019

.. _scannedfile-object:

scannedFile
===========

Holds the meta-data of a file discovered on the file system after a scan process.

Attributes
~~~~~~~~~~

The list of attributes for ``scannedFile`` are:

	* ``deleted`` (boolean): a boolean indicating if the file has been deleted on the source machine
	* ``inherited`` (boolean): a boolean indicating if this file has already been found, with the same metadata and content, in an other scan of the same scanned instance
	* ``selected`` (boolean): a boolean indicating if this file has been selected to be imported as part of the overlay
	* ``uploaded`` (boolean): a boolean indicating if this file has been received as part of the overlay upload
	* ``changeType``: the change type of the file
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


