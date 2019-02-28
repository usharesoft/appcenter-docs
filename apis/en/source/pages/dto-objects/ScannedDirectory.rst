.. Copyright FUJITSU LIMITED 2019

.. _scanneddirectory-object:

scannedDirectory
================

Holds the meta-data of a directory discovered on the file system after a scan process.

Attributes
~~~~~~~~~~

The list of attributes for ``scannedDirectory`` are:

	* ``changeType``: the change type of the directory
	* ``owner`` (string): the owner of the directory
	* ``group`` (string): the group of the directory
	* ``permissions`` (string): the permissions of the directory
	* ``sumAdded`` (long): the sum of added files in the directory
	* ``sumChanged`` (long): the sum of changed files in the directory
	* ``sumDeleted`` (long): the sum of deleted files in the directory
	* ``files``: the list of scanned files in the directorie
	* ``id`` (string): the id of the directory
	* ``path`` (string): the path of the directory
	* ``subDirectories``: the list of sub directories
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


