.. Copyright FUJITSU LIMITED 2016-2019

.. _linuxprofile-object:

linuxProfile
============

Describes a group of native packages from a linux operating system. This profile is created by a platform administrator or used in an appliance template. These templates are used by users of the platform to easily create operating profiles that are part of an appliance template.

Attributes
~~~~~~~~~~

The list of attributes for ``linuxProfile`` are:

	* ``distributionPackagesUri`` (anyURI): the uri resource to retrieve all the operating system packages contained in this os profile
	* ``distributionServicesUri`` (anyURI): the uri resource to retrieve all the operating system services contained in this os profile
	* ``packagesUri`` (anyURI): the uri resource to retrieve all the packages this os profile contains (may contain custom packages from other repositories other than the operating system)
	* ``packageUris`` (:ref:`UriList-object`): the list of uris for the packages this os profile contains
	* ``servicesUri`` (anyURI): the uri resource to retrieve all the services contained in this os profile
	* ``serviceUris`` (:ref:`UriList-object`): the uri resource to get all the available services uri
	* ``updatesUri`` (anyURI): the uri resource to get all the available package updates (see :ref:`osupdate-object`)
	* ``active`` (boolean): boolean to determine if this os profile is active (i.e. available to use by a user)
	* ``applianceUri`` (anyURI): the uri resource of the appliance this os profile is attached to
	* ``arch`` (string): the architecture of the operating system this os profile is based on
	* ``description`` (string): the description of this os profile
	* ``distributionUri`` (anyURI): the uri resource to retrieve the operating system information this os profile is based on
	* ``installedSize`` (long): estimated install disk size required (in bytes) to install the packages this template contains. Note, this attempts to include all package dependencies.
	* ``name`` (string): the name of this os profile
	* ``standardProfileUri`` (anyURI): the uri resource to get the os profile this profile is based on (see :ref:`linuxprofile-object`)
	* ``uri`` (anyURI): the uri resource of this os profile
	* ``size`` (long): the total size of all the packages contained in this os profile
	* ``version`` (string): the version of this os profile
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


