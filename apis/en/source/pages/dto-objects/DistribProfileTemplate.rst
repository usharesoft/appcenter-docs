.. Copyright 2016 FUJITSU LIMITED

.. _distribprofiletemplate-object:

distribProfileTemplate
======================

Describes a group of native packages from an operating system. This profile is created by a platform administrator. These templates are used by users of the platform to easily create operating system profiles that are part of an appliance template.

Attributes
~~~~~~~~~~

The list of attributes for ``distribProfileTemplate`` are:

	* ``active`` (boolean): boolean to determine if this os profile template is active (i.e. available to use by a user)
	* ``arch`` (string): the architecture of the operating system this os profile template is based on
	* ``description`` (string): the description of this os profile template
	* ``distributionPackagesUri`` (anyURI): the uri resource to retrieve all the operating system packages contained in this os profile template
	* ``distributionUri`` (anyURI): the uri resource to retrieve the operating system information this os profile template is based on
	* ``installedSize`` (long): estimated install disk size required (in bytes) to install the packages this template contains. Note, this attempts to include all package dependencies.
	* ``name`` (string): the name of this os profile template
	* ``packagesUri`` (anyURI): the uri resource to retrieve all the packages this os profile template contains (may contain custom packages from other repositories other than the operating system)
	* ``packageUris`` (:ref:`UriList-object`): the list of uris for the packages this os profile template contains
	* ``size`` (long): the total size of all the packages contained in this os profile template
	* ``uri`` (anyURI): the uri resource of this os profile template
	* ``version`` (string): the version of this os profile template
	* ``created`` (dateTime): the created date of the object
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


