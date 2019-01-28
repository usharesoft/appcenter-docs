.. Copyright FUJITSU LIMITED 2016-2019

.. _certificate-object:

certificate
===========

Provides the information of a certificate file. Certificates are used as part of some cloud accounts

Attributes
~~~~~~~~~~

The list of attributes for ``certificate`` are:

	* ``content`` (base64Binary): the certificate file content
	* ``name`` (string): the name of the certificate file
	* ``parentUri`` (anyURI): the uri resource of the parent object this certificate is attached to
	* ``type``: the certificate file type
	* ``uri`` (anyURI): the uri resource of this certificate
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


