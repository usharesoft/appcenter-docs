.. Copyright 2017 FUJITSU LIMITED

.. _credaccountk5-object:

CredAccountK5
=============

Holds specific account information for the Fujitsu K5 public cloud platform.

Attributes
~~~~~~~~~~

The list of attributes for ``CredAccountK5`` are:

	* ``login`` (string): the user login name to use
	* ``password`` (string): the user password to use
	* ``name`` (string): the name of the cloud account
	* ``parentUri`` (anyURI): the uri resource of the parent object this cloud account is attached to
	* ``uri`` (anyURI): the uri resource of this cloud account
	* ``targetPlatform`` (:ref:`targetPlatform-object`): the target platform (see :ref:`targetplatform-object`) this cloud account is for
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


