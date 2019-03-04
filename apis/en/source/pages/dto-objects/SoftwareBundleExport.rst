.. Copyright FUJITSU LIMITED 2016-2019

.. _softwarebundleexport-object:

softwareBundleExport
====================

Holds tracking information on requests to export a software bundle. An export basically archives the software bundle meta-data and all relevant files and allows the user to download that archive. The archive information can then be version controlled or imported to another UForge platform.

The software bundle export is an asynchronous job which may take some time. The current status of the export is stored in this object.

Attributes
~~~~~~~~~~

The list of attributes for ``softwareBundleExport`` are:

	* ``bundleName`` (string): the name of this exported software bundle
	* ``bundleVersion`` (string): the version information of this exported software bundle
	* ``downloadUri`` (anyURI): uri resource used to download this exported software bundle (as an archive)
	* ``location`` (anyURI): the full pathname where the exported software bundle (as an archive) is stored locally
	* ``parentUri`` (anyURI): the uri resource of the parent object this exported software bundle belongs to
	* ``status`` (:ref:`status-object`): the current status of the exported software bundle
	* ``uri`` (anyURI): the uri resource of this exported software bundle object
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


