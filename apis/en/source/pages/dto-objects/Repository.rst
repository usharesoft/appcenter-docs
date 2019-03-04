.. Copyright FUJITSU LIMITED 2016-2019

.. _repository-object:

repository
==========

Describes an operating system repository registered on the platform.

Attributes
~~~~~~~~~~

The list of attributes for ``repository`` are:

	* ``name`` (string): the name of the repository
	* ``parentUri`` (anyURI): the uri resource of the parent object this repository object belongs to
	* ``uri`` (anyURI): the uri resource of this repository object
	* ``distributionsUri`` (anyURI): the uri resource to retrieve the operating system(s) of this repository (may contain minor versions)
	* ``url`` (string): the URL endpoint of this repository
	* ``packagingType``: the package type ths repository holds
	* ``lastUpdated`` (dateTime): the date this repository last received a package update
	* ``coreRepository`` (boolean): boolean indicating when the repository is mandatory for a distribution to function properly.
	* ``officiallySupported`` (boolean): DEPRECATED, will be removed in a future release. Use "coreRepository" instead.
	* ``distributionsUriList`` (:ref:`UriList-object`): the list of uri resources for each operating system contained in this repository
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


