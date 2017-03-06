.. Copyright 2017 FUJITSU LIMITED

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
	* ``repositoryUpdates``: the list of :ref:`repositoryupdate-object` holding information each time the repository was requested to be updated
	* ``officiallySupported`` (boolean): boolean indicating whether this repository is officially supported
	* ``distributionsUriList`` (:ref:`UriList-object`): the list of uri resources for each operating system contained in this repository
	* ``created`` (dateTime): the created date of the object
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


