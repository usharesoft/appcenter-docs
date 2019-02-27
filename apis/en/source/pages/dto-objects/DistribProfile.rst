.. Copyright FUJITSU LIMITED 2016-2019

.. _distribprofile-object:

distribProfile
==============

Describes an abstract profile shared between linux and windows.

Attributes
~~~~~~~~~~

The list of attributes for ``distribProfile`` are:

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


