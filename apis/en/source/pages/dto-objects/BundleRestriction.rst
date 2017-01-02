.. Copyright 2016 FUJITSU LIMITED

.. _bundlerestriction-object:

bundleRestriction
=================

Provides the restriction on distributions for a software bundle.

Attributes
~~~~~~~~~~

The list of attributes for ``bundleRestriction`` are:

	* ``uri`` (anyURI): the uri of this bundle restriction
	* ``parentUri`` (anyURI): the uri resource of the parent object this bundle restriction belongs to
	* ``type``: the bundle restriction type
	* ``distributionsUri`` (anyURI): the uri resource to retrieve all the operating system this bundle restriction is for
	* ``distributionUris`` (:ref:`UriList-object`): the list of uri resources of each operating system this bundle restriction is for
	* ``created`` (dateTime): the created date of the object
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


