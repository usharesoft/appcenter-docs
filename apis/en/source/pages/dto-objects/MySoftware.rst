.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _mysoftware-object:

mySoftware
==========

Describes a software component contained in a user's ``Software Library``. These software components are private to a user, and are maintained by the user. They can be added to a user's appliance templates.

Attributes
~~~~~~~~~~

The list of attributes for ``mySoftware`` are:

	* ``appliancesUri`` (anyURI): the uri resource to retrieve all the appliance templates that use this software component
	* ``applianceUris`` (:ref:`UriList-object`): the list of uri resources of each appliance template using this software component
	* ``defaultInstallLocation`` (string): the default full pathname of where to install the software (if not a native package)
	* ``imported`` (boolean): a boolean highlighting if the MySoftware has been imported (from a scan, an appliance import or a workspace)
	* ``installLocation`` (string): the full pathname of where to install this software item (overrides the ``defaultInstallLocation``)
	* ``revision`` (int): the revision number of the software
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


