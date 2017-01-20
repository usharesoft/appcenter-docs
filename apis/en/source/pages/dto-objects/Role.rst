.. Copyright 2017 FUJITSU LIMITED

.. _role-object:

role
====

Describes a ``role`` used for Role-Based Access Control (RBAC). A role groups together a list of ``entitlements`` (see :ref:`entitlement-object`.)

A role can then be assigned to an user to enforce access rights.

Attributes
~~~~~~~~~~

The list of attributes for ``role`` are:

	* ``name`` (string): the role name
	* ``description`` (string): the role descrition
	* ``entitlements``: the list of entitlements this role contains (see :ref:`entitlement-object`
	* ``created`` (dateTime): the created date of the object
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


