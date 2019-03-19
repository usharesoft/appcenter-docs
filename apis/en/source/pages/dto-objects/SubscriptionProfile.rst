.. Copyright FUJITSU LIMITED 2016-2019

.. _subscriptionprofile-object:

subscriptionProfile
===================

Describes access and permission information used when creating new users on the platform.

Attributes
~~~~~~~~~~

The list of attributes for ``subscriptionProfile`` are:

	* ``active`` (boolean): boolean flag to indicate whether this subscription profile can be used
	* ``admins``: the list of administrators that can use this subscription profile when creating a new user (see :ref:`user-object`)
	* ``adminsUri`` (anyURI): the uri resource to retrieve all the administrators that can use this subscription profile
	* ``code`` (string): the subscription profile code to use when creating a user (this subscription profile will be used)
	* ``description`` (string): the description of this subscription profile
	* ``distribsUri`` (anyURI): the uri resource to get all the operating systems that the user will be given access to
	* ``distributions``: the list of operating systems that the user will be given access to (see :ref:`distribution-object`)
	* ``formats``: the list of primitive formats that the user will be given access to (see :ref:`imageformat-object`)
	* ``formatsUri`` (anyURI): the uri resource to get all the primitive formats that the user will be given access to
	* ``targetPlatforms``: the list of target platforms that the user will be given access to (see :ref:`targetplatform-object`)
	* ``targetPlatformsUri`` (anyURI): the uri resource to get all the target platforms that the user will be given access to
	* ``targetFormats``: the list of target formats that the user will be given access to (see :ref:`targetformat-object`)
	* ``targetFormatsUri`` (anyURI): the uri resource to get all the target formats that the user will be given access to
	* ``name`` (string): the name of this subscription profile
	* ``orgUri`` (anyURI): the uri resource of the organization this subscription profile is registered to
	* ``quotas``: the list of quotas that the user will be given (see :ref:`quota-object`)
	* ``quotasUri`` (anyURI): the uri resource to get all the quota information that the user will be given
	* ``roles``: the list of roles that the user will be given to (see :ref:`role-object`)
	* ``rolesUri`` (anyURI): the uri resource to get all the roles that the user will be given
	* ``uri`` (anyURI): the uri resource of this subscription profile object
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


