.. Copyright 2016 FUJITSU LIMITED

.. _quota-object:

quota
=====

Provides information on quota used to restrict user usage.

Attributes
~~~~~~~~~~

The list of attributes for ``quota`` are:

	* ``frequency``: whether the quota should be reset at a certain frequency (only monthly is supported at the moment)
	* ``limit`` (long): the quota limit
	* ``nb`` (long): the current number
	* ``renewalDate`` (dateTime): the renewal date of the quota
	* ``type``: the quota type
	* ``typeId`` (int): the id of the type
	* ``uri`` (anyURI): the uri resource of this quota object
	* ``created`` (dateTime): the created date of the object
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


