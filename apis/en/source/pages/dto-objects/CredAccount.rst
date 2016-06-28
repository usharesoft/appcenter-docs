.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _credaccount-object:

credAccount
===========

Holds general account information for a target cloud environment. These credentials allow the platform to communicate with the target cloud environment including registering machine images.

Attributes
~~~~~~~~~~

The list of attributes for ``credAccount`` are:

	* ``name`` (string): the name of the cloud account
	* ``parentUri`` (anyURI): the uri resource of the parent object this cloud account is attached to
	* ``uri`` (anyURI): the uri resource of this cloud account
	* ``targetPlatform`` (:ref:`targetPlatform-object`): the target platform (see :ref:`targetplatform-object`) this cloud account is for
	* ``created`` (dateTime): the created date of the object
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


