.. Copyright FUJITSU LIMITED 2016-2019

.. _logo-object:

logo
====

Provides the meta-data of a logo or photo uploaded onto the platform.

Attributes
~~~~~~~~~~

The list of attributes for ``logo`` are:

	* ``description`` (string): the description of this logo
	* ``name`` (string): the file name of the logo
	* ``parentUri`` (anyURI): the uri resource of the parent object this logo object belongs
	* ``title`` (string): the tooltip for this logo
	* ``uri`` (anyURI): the uri resource of this logo object
	* ``md5sum`` (string): the md5sum of the uploaded object
	* ``mimeType`` (string): the mime type of the file uploaded
	* ``sha256sum`` (string): the sha256 value of the uploaded object
	* ``size`` (long): the size (in bytes) of the uploaded object
	* ``status`` (:ref:`status-object`): the upload status (see :ref:`status-object`)
	* ``uploaded`` (boolean): a boolean to indicate if the file has been uploaded
	* ``uploadedTime`` (dateTime): the timestamp the upload was completed
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


