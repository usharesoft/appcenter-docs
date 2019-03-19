.. Copyright FUJITSU LIMITED 2016-2019

.. _distribution-object:

distribution
============

Describes a specific version of an operating system that is registered on the platform.

Attributes
~~~~~~~~~~

The list of attributes for ``distribution`` are:

	* ``active`` (boolean): boolean flag to determine if this operating system is ``active`` i.e. namely can be accessed and used by users
	* ``arch``: the architecture of this operating system
	* ``baseMilestonesUri`` (anyURI): the uri resource to retrieve the milestones for this operating system
	* ``basePkgsUri`` (anyURI): the uri resource to retrieve all the packages contained in this operating system
	* ``baseProfilesUri`` (anyURI): the uri resource to retrieve all the os profile templates (see :ref:`distribprofile-object`)
	* ``baseRepositoriesUri`` (anyURI): the uri resource to retrieve all the distribution repositories (see :ref:`repository-object`)
	* ``baseGoldensUri`` (anyURI): the uri resource to retrieve the base machine images (for Microsoft Windows only)
	* ``company`` (:ref:`company-object`): the company information of this operating system (see :ref:`company-object`
	* ``description`` (string): the description of this operating system
	* ``family``: the family type for this operating system
	* ``license`` (:ref:`license-object`): the license information for this operating system (see :ref:`license-object`)
	* ``milestoneUris`` (:ref:`UriList-object`): the list of uri resources for each milestone registered to this operating system
	* ``name``: the name of the operating system
	* ``parentUri`` (anyURI): the uri resource of the parent object this operating system is attached to (normally an organization)
	* ``pkgType`` (string): the native package type this operating system supports
	* ``profiles``: the list of os profile template objects (see :ref:`distribprofile-object`)
	* ``profileUris`` (:ref:`UriList-object`): the list of uri resources for each os profile template registered for this operating system
	* ``releaseDate`` (dateTime): the date this operating system was released
	* ``size`` (long): the estimated size of the operating system (total size of all the packages in the repository)
	* ``uri`` (anyURI): the uri resource for this operating system
	* ``version`` (string): the version of this operating system
	* ``visible`` (boolean): boolean to determine if this operating system should be displayed
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


