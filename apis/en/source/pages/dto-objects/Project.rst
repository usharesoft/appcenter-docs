.. Copyright FUJITSU LIMITED 2016-2019

.. _project-object:

project
=======

A software component that is part of the platform's ``Project Catalog``. Such software components are public for all users to use in their appliance templates. These software components are updated and maintained by an administrator of the platform.

Attributes
~~~~~~~~~~

The list of attributes for ``project`` are:

	* ``orgUris`` (:ref:`UriList-object`): the list of uri resources of each organization this software bundle (project) has been registered to
	* ``tag`` (string): the tag information
	* ``shortTag`` (string): the short tag information (mySoftware or project)
	* ``name`` (string): the name of this software bundle
	* ``version`` (string): the version information of this software bundle
	* ``description`` (string): the description for this software bundle
	* ``release`` (string): the release information for the software bundle
	* ``defaultInstallLocation`` (string): the default full pathname of where to install the software bundle (if not a native package)
	* ``installLocation`` (string): the full pathname of where to install this software bundle item (overrides the ``defaultInstallLocation``)
	* ``restricted`` (boolean): a boolean highlighting if the Software bundle is restricted
	* ``installedSize`` (long): the estimated disk size (in bytes) required to install this software bundle
	* ``size`` (long): the total size of this software bundle (in bytes)
	* ``revision`` (long): the revision number of the software bundle
	* ``bundleRestriction`` (:ref:`bundleRestriction-object`): the restriction for this software bundle
	* ``artifactsUri`` (anyURI): the uri resource to retrieve the details of software artifacts contained in the software bundle
	* ``uri`` (anyURI): the uri resource of this software bundle object
	* ``exportUri`` (anyURI): uri resource used to export this software bundle
	* ``category`` (:ref:`category-object`): the category for this software bundle (project)
	* ``license`` (:ref:`license-object`): the license information (see :ref:`license-object`)
	* ``logo`` (:ref:`logo-object`): the :ref:`logo-object` object for the software bundle
	* ``maintainer`` (string): the maintainer name for this project
	* ``website`` (anyURI): the website URL of the maintainer
	* ``softwareArtifactUris`` (:ref:`UriList-object`): the list of uri resources for each software artifacts in the software bundle
	* ``formatDependent`` (boolean): a boolean highlighting if the Software bundle is restricted on target format
	* ``containerTemplatesUri`` (anyURI): the uri to retrieve container templates created from the software bundle
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


