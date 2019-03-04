.. Copyright FUJITSU LIMITED 2016-2019

.. _userprofile-object:

userProfile
===========

Describes an user's profile

Attributes
~~~~~~~~~~

The list of attributes for ``userProfile`` are:

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


