.. Copyright FUJITSU LIMITED 2016-2019

.. _applianceimport-object:

applianceImport
===============

Holds the information when an appliance is being imported to this UForge platform. The actual import is done by uploading an appliance archive via the ``uploadUri``.

The appliance import is an asynchronous job which may take some time. The current status of the import is stored in this object.

Attributes
~~~~~~~~~~

The list of attributes for ``applianceImport`` are:

	* ``useMajor`` (boolean): boolean flag to instruct the import process to use only the major version of the operating system (e.g. rather than CentOS 6.2, CentOS 6 will be used)
	* ``reuseBundles`` (boolean): boolean flag to instruct the import process to re-use any software components already available in the platform rather than re-importing these software components into the user's software library
	* ``force_rw`` (boolean): boolean flag to instruct the import process to overwrite any appliance template with the same name and version already existing on the platform (potentially from a previous import)
	* ``imported`` (boolean): boolean flag indicating whether the import is complete
	* ``parentUri`` (anyURI): the uri resource of the parent object this object is attached to
	* ``referenceUri`` (anyURI): the uri of the appliance template created from this import
	* ``uploadUri`` (anyURI): the uri resource to upload any artifacts assocaited with this import (software components etc)
	* ``uri`` (anyURI): the uri resource of this appliance import
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


