.. Copyright FUJITSU LIMITED 2016-2019

.. _bundlerestriction-object:

bundleRestriction
=================

Provides the restriction on distributions for a software bundle.

Attributes
~~~~~~~~~~

The list of attributes for ``bundleRestriction`` are:

	* ``uri`` (anyURI): the uri of this bundle restriction
	* ``parentUri`` (anyURI): the uri resource of the parent object this bundle restriction belongs to
	* ``restrictionRule`` (string): the expression rule corresponding to restrictions
	* ``distributionsUri`` (anyURI): the uri resource to retrieve all the operating system this bundle restriction is for
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


