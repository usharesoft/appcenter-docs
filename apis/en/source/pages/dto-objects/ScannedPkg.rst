.. Copyright FUJITSU LIMITED 2016-2019

.. _scannedpackage-object:

scannedPackage
==============

Holds the meta-data of a native package discovered on the file system after a scan process.

Attributes
~~~~~~~~~~

The list of attributes for ``scannedPackage`` are:

	* ``deleted`` (boolean): a boolean indicating if the native package has been deleted on the source machine
	* ``deltaModified`` (boolean): a boolean indicating if the package has been modified compared to its initial installation state
	* ``distributionUri`` (anyURI): the uri of the distribution this package is attached to
	* ``filesUri`` (anyURI): the uri resource to retrieve all the files scanned and associated to this package
	* ``fromRepo`` (boolean): a boolean indicating if the package has been found in any platform registered repositories
	* ``headers`` (string): the headers (metadata) of the native package
	* ``inherited`` (boolean): a boolean indicating if this package has already been found, with the same metadata and content, in an other scan of the same scanned instance
	* ``modifiedFiles``: the list of :ref:`scannedfile-object` objects that are modified in this package compared to the initial installation state
	* ``notModifiedFiles``: the list of :ref:`scannedfile-object` objects that have not been modified in this package. Please note: this list will be empty if the package has been detected in one or several of the platform registered repositories
	* ``postunScripts`` (string): the content of the native package post uninstall scripts
	* ``preunScripts`` (string): the content of the native package pre uninstall scripts
	* ``scannedInstanceId`` (long): the id of the parent scanned instance
	* ``selected`` (boolean): a boolean incidating if this package has been marked to be included in the overlay
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
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


