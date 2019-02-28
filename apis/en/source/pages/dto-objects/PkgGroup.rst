.. Copyright FUJITSU LIMITED 2016-2019

.. _pkggroup-object:

pkgGroup
========

Describes a group of packages.

Attributes
~~~~~~~~~~

The list of attributes for ``pkgGroup`` are:

	* ``category`` (string): the category for this group of packages
	* ``company`` (:ref:`company-object`): the company name
	* ``description`` (string): the description for this group of packages
	* ``distributionUri`` (anyURI): the uri resource of the operating system these packages belong to
	* ``distroId`` (long): the unique id of the operating system these packages belong to
	* ``installedSize`` (long): the estimated disk size (in bytes) required to install these group of packages
	* ``license`` (:ref:`license-object`): the license information (see :ref:`license-object`)
	* ``name`` (string): the name of these group of packages
	* ``packagesUri`` (anyURI): the uri resource to retrieve the details of these packages
	* ``packageUris`` (:ref:`UriList-object`): the list of uri resources for each package in the group
	* ``release`` (string): the release information for the group
	* ``size`` (long): the total size of all the packages in the group (in bytes)
	* ``tag`` (string): the tag information
	* ``uri`` (anyURI): the uri resource of this package group object
	* ``version`` (string): the version information of this package group
	* ``packages``: the list of packages in this group (see :ref:`package-object`)
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


