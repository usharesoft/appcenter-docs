.. Copyright FUJITSU LIMITED 2016-2019

.. _softwareartifact-object:

softwareArtifact
================

Holds information of a native operating system package, file or bootscript.

Attributes
~~~~~~~~~~

The list of attributes for ``softwareArtifact`` are:

	* ``uri`` (anyURI): the uri resource of this software artifact object
	* ``tag`` (string): the tag information
	* ``binaryUri`` (anyURI): the uri resource to retrieve the binary
	* ``parentUri`` (anyURI): the uri resource of the parent object this software artifact belongs to
	* ``extract`` (boolean): a boolean flag to extract an archive (if the uploaded object is an archive) as part of the generation
	* ``install`` (boolean): boolean to indicate whether to install the software artifact or just to store it on the filesystem
	* ``cache`` (boolean): boolean to indicate whether to put in cache the software artifact or just upload during generation
	* ``active`` (boolean): boolean to indicate whether the software artifact active or not
	* ``installLocation`` (string): the location to store the software artifact if ``install == false``
	* ``name`` (string): the name of the software artifact
	* ``fullName`` (string): the name of the file including the extension
	* ``origName`` (string): the original name of the software artifact
	* ``artifactBuildDate`` (dateTime): the date the software artifact was built
	* ``artifactFileDate`` (dateTime): the file timestamp
	* ``release`` (string): the release information of the software artifact
	* ``shortTag`` (string): short tag value (osPackage, softwarefile or bootscript)
	* ``type`` (string): file media type
	* ``version`` (string): the version of this software artifact
	* ``arch`` (string): the architecture type for this software artifact (rpm uploaded file or OS Package)
	* ``params`` (string): silent install parameters to use as part of the installation of the object (for windows only)
	* ``artifactCredAccount`` (:ref:`artifactCredAccount-object`): the artifact account (see :ref:`artifactcredaccount-object`) this software artifact belong to
	* ``subSoftwareArtifacts``: the list of sub-software artifact of this software artifact (which represents a folder)
	* ``subSoftwareArtifactUri`` (anyURI): the list of sub-software artifact uris of this software artifact
	* ``parentPath`` (string): the parent pathname of this software artifact (depending of its parent software artifact)
	* ``remotePath`` (string): the remote pathname of this software artifact to retrieve from artifact account
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


