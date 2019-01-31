.. Copyright FUJITSU LIMITED 2016-2019

.. _imageformat-object:

imageFormat
===========

Provides the information on a format available for generating a machine image. These are the primitive format types supported by the platform.

Attributes
~~~~~~~~~~

The list of attributes for ``imageFormat`` are:

	* ``access`` (boolean): boolean flag to determine if the requesting user has access to this format
	* ``active`` (boolean): boolean flag to determine if this format is visible to the requesting user
	* ``name``: the name of the format
	* ``uri`` (anyURI): the uri resource of this format
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


