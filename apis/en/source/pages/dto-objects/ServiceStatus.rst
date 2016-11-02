.. Copyright 2016 FUJITSU LIMITED

.. _servicestatus-object:

serviceStatus
=============

Provides the status of the platform.

Attributes
~~~~~~~~~~

The list of attributes for ``serviceStatus`` are:

	* ``alive`` (boolean): determines if the platform is up and running
	* ``version`` (string): the current version of the platform
	* ``serviceLoad`` (int): the current service load (max is 100)
	* ``created`` (dateTime): the created date of the object
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


