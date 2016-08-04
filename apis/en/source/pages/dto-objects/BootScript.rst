.. Copyright 2016 FUJITSU LIMITED

.. _bootscript-object:

bootScript
==========

Provides all the information of a boot script file that is executed on initial boot of a machine instance. The boot script can be executed only once on the first boot of the machine instance, or executed on every reboot of the machine instance.

Attributes
~~~~~~~~~~

The list of attributes for ``bootScript`` are:

	* ``bootOrder`` (int): the boot order number (starting at 0)
	* ``bootType``: the type of the boot script. The boot script can either be executed once during initial provisioning: `firstboot`; or executed every time the instance is rebooted: `everyboot`
	* ``arch`` (string): the architecture type for this package
	* ``binaryUri`` (anyURI): the uri resource to retrieve the binary
	* ``extract`` (boolean): a boolean flag to extract an archive (if the uploaded object is an archive) as part of the generation
	* ``fullName`` (string): the name of the file including the extension
	* ``install`` (boolean): boolean to indicate whether to install the package or just to store it on the filesystem
	* ``installLocation`` (string): the location to store the package if ``install == false``
	* ``name`` (string): the name of the package
	* ``origName`` (string): the original name of the package
	* ``params`` (string): silent install parameters to use as part of the installation of the object (for windows only)
	* ``parentUri`` (anyURI): the uri resource of the parent object this package belongs to
	* ``pkgBuildDate`` (dateTime): the date the package was built
	* ``pkgFileDate`` (dateTime): the file timestamp
	* ``release`` (string): the release information package
	* ``shortTag`` (string): tag value
	* ``repositoryName`` (string): repository name
	* ``sticky`` (boolean): boolean to indicate that this package version should not be updated when new package updates are available
	* ``type`` (string): file media type
	* ``uri`` (anyURI): the uri resource of this package object
	* ``version`` (string): the version of this package
	* ``epoch`` (int): the epoch value (used for native packages)
	* ``md5sum`` (string): the md5sum of the uploaded object
	* ``mimeType`` (string): the mime type of the file uploaded
	* ``sha256sum`` (string): the sha256 value of the uploaded object
	* ``size`` (long): the size (in bytes) of the uploaded object
	* ``status`` (:ref:`status-object`): the upload status (see :ref:`status-object`)
	* ``uploaded`` (boolean): a boolean to indicate if the file has been uploaded
	* ``uploadedTime`` (dateTime): the timestamp the upload was completed
	* ``created`` (dateTime): the created date of the object
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


