.. Copyright FUJITSU LIMITED 2016-2019

.. _softwarebundleimport-object:

softwareBundleImport
====================

Holds the information when a software bundle is being imported to this UForge platform. The actual import is done by uploading a software bundle archive via the ``uploadUri``.

The software bundle import is an asynchronous job which may take some time. The current status of the import is stored in this object.

Attributes
~~~~~~~~~~

The list of attributes for ``softwareBundleImport`` are:

	* ``parentUri`` (anyURI): the uri resource of the parent object this object is attached to
	* ``referenceUri`` (anyURI): the uri of the software bundle created from this import
	* ``uploadUri`` (anyURI): the uri resource to upload any files assocaited with this import
	* ``statusUri`` (anyURI): the uri resource of the current status of the software bundle import
	* ``imported`` (boolean): boolean flag indicating that is a real import or a creation
	* ``uri`` (anyURI): the uri resource of this software bundle import
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


