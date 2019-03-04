.. Copyright FUJITSU LIMITED 2016-2019

.. _license-object:

license
=======

Holds the meta-data of a license file.

Attributes
~~~~~~~~~~

The list of attributes for ``license`` are:

	* ``name`` (string): the file name of the license
	* ``parentUri`` (anyURI): the uri resource of the parent object this license object is attached to
	* ``type`` (string): the license type (e.g. ``GPL``, ``GPLv2``, ``CDDL``, ``Apache``)
	* ``uri`` (anyURI): the uri resource of thie license object
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


