.. Copyright FUJITSU LIMITED 2016-2019

.. _user-object:

user
====

Describes an user of the platform.

Attributes
~~~~~~~~~~

The list of attributes for ``user`` are:

	* ``address`` (:ref:`address-object`): the user's address
	* ``admin`` (boolean): boolean indicating if the user is an administrator
	* ``adminOrgsUri`` (anyURI): the uri resource to get the list of Org this user is an administrator of
	* ``adminOrgUris`` (:ref:`UriList-object`): the list of Org URI where this user is an administrator
	* ``apiKeysQuota`` (int): the number of API keys this user can generate
	* ``applianceUris`` (:ref:`UriList-object`): the list of uri resources for each appliance template this user is managing
	* ``baseApiKeysUri`` (anyURI): the uri resource to retrieve the user's api keys
	* ``baseAppliancesUri`` (anyURI): the uri resource to retrieve the user's appliance templates
	* ``baseBlueprintsUri`` (anyURI): the uri resource to retrieve the user's blueprint
	* ``baseCredAccountsUri`` (anyURI): the uri resource to retrieve the user's cloud accounts
	* ``baseDeploymentsUri`` (anyURI): the uri resource to retrieve the user's deployments
	* ``baseDistributionsUri`` (anyURI): the uri resource to retrieve the operating systems the user has access to
	* ``baseFormatsUri`` (anyURI): the uri resource to retrieve the primitive formats the user has access to
	* ``baseTargetPlatformsUri`` (anyURI): the uri resource to retrieve the target platforms the user has access to
	* ``baseTargetFormatsUri`` (anyURI): the uri resource to retrieve the target formats the user has access to
	* ``baseImagesUri`` (anyURI): the uri resource to retrieve the user's machine images
	* ``baseExportsUri`` (anyURI): the uri resource to retrieve the user's exported appliance templates
	* ``baseImportsUri`` (anyURI): the uri resource to retrieve the user's imported appliance templates
	* ``mySoftwareImportsUri`` (anyURI): the uri resource to retrieve the user's imported software bundles
	* ``baseMySoftwareLibraryUri`` (anyURI): the uri resource to retrieve the user's software library (containing private software components)
	* ``baseOrgsUri`` (anyURI): the uri resource to retrieve the organizations the user is a member of
	* ``baseProjectsUri`` (anyURI): the uri resource to retrieve the project catalog software components
	* ``basePublishImagesUri`` (anyURI): the uri resource to retrieve the user's published machine images
	* ``baseRolesUri`` (anyURI): the uri resource to retrieve the user's roles
	* ``baseWorkspacesUri`` (anyURI): the uri resource to retrieve the workspaces the user has access to
	* ``creationCode`` (string): the code used for creating the user (subscription profile code, see :ref:`subscriptionprofile-object`)
	* ``credAccountUris`` (:ref:`UriList-object`): the list of uri resources for each cloud account the user has
	* ``artifactAccountsUri`` (anyURI): the uri resource to retrieve the user's artifact accounts
	* ``dob`` (dateTime): the user's date of birth
	* ``gender`` (string): the user's gender
	* ``homePhone`` (string): the user's home phone number
	* ``lang`` (string): the user's preferred language
	* ``migrationsUri`` (anyURI): the uri resource to retrieve all the migrations for the user (see :ref:`migration-object`)
	* ``mobilePhone`` (string): the user's mobile phone number
	* ``mySoftwareLibraryUris`` (:ref:`UriList-object`): the list of uri resources for each software component the user has in their software library
	* ``name`` (string): the user's first name
	* ``officePhone`` (string): the user's office phone number
	* ``orgUris`` (:ref:`UriList-object`): the list of uri resources for each organization this user is a member of
	* ``password`` (string): the user's password
	* ``projectUris`` (:ref:`UriList-object`): the list of uri resources for each software component in the project catalog
	* ``promoCode`` (string): the promotion code used when creating the user account
	* ``quotasUri`` (anyURI): the uri resource to retrieve the user's quota information
	* ``roles``: the list of roles assigned to the user (see :ref:`role-object`)
	* ``scannedInstancesUri`` (anyURI): the uri resource to retrieve all the scanned instances for the user (see :ref:`scannedinstance-object`)
	* ``scansUri`` (anyURI): the uri resource to retrieve all the scans for the user (see :ref:`scan-object`)
	* ``sshKeys``: the list of public ssh keys for the user (see :ref:`sshkey-object`
	* ``sshKeysUri`` (anyURI): the uri resource to retrieve all the publish ssh keys for the user
	* ``statsUri`` (anyURI): the uri resource to retrieve all the user statistics
	* ``uri`` (anyURI): the uri resource of this user object
	* ``usageUri`` (anyURI): the uri resource to retrieve the platform usage for the user
	* ``loginName`` (string): the user login name
	* ``active`` (boolean): boolean indicating whether the user account is active
	* ``company`` (:ref:`company-object`): the company information for this user
	* ``email`` (string): the user's email address
	* ``firstName`` (string): the user's first name
	* ``surname`` (string): the user's surname
	* ``jobTitle`` (string): the user's job title
	* ``photo`` (:ref:`logo-object`): the user's photo / avatar
	* ``website`` (anyURI): the user's website
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


