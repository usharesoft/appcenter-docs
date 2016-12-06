.. Copyright 2016 FUJITSU LIMITED

.. _distribprofile-object:

distribProfile
==============

Describes a group of native packages from an operating system. This profile is used in an appliance template. This profile is created from a :ref:`distribprofiletemplate-object` that is created and maintained by a platform administrator.

Attributes
~~~~~~~~~~

The list of attributes for ``distribProfile`` are:

	* ``applianceUri`` (anyURI): the uri resource of the appliance template this os profile is attached to
	* ``standardProfileUri`` (anyURI): the uri resource to get the os profile template this profile is based on (see :ref:`distribprofiletemplate-object`)
	* ``updatesUri`` (anyURI): the uri resource to get all the available package updates (see :ref:`osupdate-object`
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


