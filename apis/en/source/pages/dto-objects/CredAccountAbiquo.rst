.. Copyright 2018 FUJITSU LIMITED

.. _credaccountabiquo-object:

CredAccountAbiquo
=================

Holds specific account information for the Abiquo cloud platform.

Attributes
~~~~~~~~~~

The list of attributes for ``CredAccountAbiquo`` are:

	* ``hostname`` (string): the hostname of the abiquo platform
	* ``login`` (string): the login name to use for this cloud platform
	* ``password`` (string): the password to use for this cloud platform
	* ``name`` (string): the name of the cloud account
	* ``parentUri`` (anyURI): the uri resource of the parent object this cloud account is attached to
	* ``uri`` (anyURI): the uri resource of this cloud account
	* ``targetPlatform`` (:ref:`targetPlatform-object`): the target platform (see :ref:`targetplatform-object`) this cloud account is for
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


