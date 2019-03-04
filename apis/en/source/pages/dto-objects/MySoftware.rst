.. Copyright FUJITSU LIMITED 2016-2019

.. _mysoftware-object:

mySoftware
==========

Describes a software component contained in a user's ``Software Library``. These software components are private to a user, and are maintained by the user. They can be added to a user's appliance templates.

Attributes
~~~~~~~~~~

The list of attributes for ``mySoftware`` are:

	* ``appliancesUri`` (anyURI): the uri resource to retrieve all the appliance templates that use this software component
	* ``applianceUris`` (:ref:`UriList-object`): the list of uri resources of each appliance template using this software component
	* ``cloneUri`` (anyURI): uri resource used to clone this MySoftware
	* ``imported`` (boolean): a boolean highlighting if the MySoftware has been imported (from a scan, an appliance import or a workspace)
	* ``generationEnabled`` (boolean): a boolean highlighting if the Software component is able to be generated or not
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


