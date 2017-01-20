.. Copyright 2017 FUJITSU LIMITED

.. _project-object:

project
=======

A software component that is part of the platform's ``Project Catalog``. Such software components are public for all users to use in their appliance templates. These software components are updated and maintained by an administrator of the platform.

Attributes
~~~~~~~~~~

The list of attributes for ``project`` are:

	* ``baseOrgUri`` (anyURI): the uri resource of the organization this project has been registered to
	* ``defaultInstallLocation`` (string): the default installation location of the files for this project
	* ``installLocation`` (string): the installation location of the files for this project (overrides the ``defaultInstallLocation``)
	* ``osPackageUris`` (:ref:`UriList-object`): the list of uri resources for each native package included in this project
	* ``shortTag`` (string): the tag for this project
	* ``uploadedPackageUris`` (:ref:`UriList-object`): the list of uri resources for uploaded file/package included in this project
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
	* ``created`` (dateTime): the created date of the object
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


