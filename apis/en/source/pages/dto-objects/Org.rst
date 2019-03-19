.. Copyright FUJITSU LIMITED 2016-2019

.. _org-object:

org
===

Holds the meta-data of an organization of the platform.

Attributes
~~~~~~~~~~

The list of attributes for ``org`` are:

	* ``activateNewUsers`` (boolean): a boolean flag to indicate to make any news users being created in this organization to automatically active
	* ``admin`` (boolean): boolean flag to indicate whether the user requesting this organization information is an administrator of this organization
	* ``appliancesUri`` (anyURI): the uri resource to retrieve all the appliance templates in this organization
	* ``categoriesUri`` (anyURI): the uri resource to retrieve all the categories added to this organization (see :ref:`category-object`)
	* ``companiesUri`` (anyURI): the uri resource to retrieve all the companies registered in this organization (see :ref:`company-object`)
	* ``company`` (:ref:`company-object`): the org company
	* ``defaultOrg`` (boolean): boolean to indicate if this organization is the default of the platform
	* ``distributionsUri`` (anyURI): the uri resource to retrieve all the operating systems of the organization
	* ``targetFormats``: the list of target formats available in this organization
	* ``formatsUri`` (anyURI): the uri resource to retrieve all the available primitive formats in this organization
	* ``targetPlatformsUri`` (anyURI): the uri resource to retrieve all the available target platforms in this organization
	* ``targetFormatsUri`` (anyURI): the uri resource to retrieve all the available target formats in this organization
	* ``license`` (:ref:`license-object`): the org license
	* ``licensesUri`` (anyURI): the uri resource to retrieve all the registered licenses in the org
	* ``licenseUri`` (anyURI): the uri resource to retrieve the license of the org
	* ``membersUri`` (anyURI): the uri resource to retrieve all the users registered to this organization
	* ``milestonesUri`` (anyURI): the uri resource to retrieve all the milestones registered to this organization
	* ``name`` (string): the organization name
	* ``projectsUri`` (anyURI): the uri resource to retrieve all the projects registered to this organization's project catalog
	* ``rolesUri`` (anyURI): the uri resource to retrieve all the roles registered to this organization
	* ``statsUri`` (anyURI): the uri resource to retrieve all the statistics for this organization
	* ``subscriptionProfilesUri`` (anyURI): the uri resource to retrieve all the subscription profiles registered to this organization
	* ``uri`` (anyURI): the uri resource for this organization object
	* ``workspacesUri`` (anyURI): the uri resource to retrieve all the workspaces registered to this organization
	* ``repositoriesUri`` (anyURI): the uri resource to retrieve all the operating system repositories registered to this organization
	* ``artifactAccountsUri`` (anyURI): the uri resource to retrieve all the artifact accounts registered to this organization
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


