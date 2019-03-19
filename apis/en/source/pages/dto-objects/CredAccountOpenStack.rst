.. Copyright FUJITSU LIMITED 2016-2019

.. _credaccountopenstack-object:

CredAccountOpenStack
====================

Holds specific account information for the OpenStack cloud platform.

Attributes
~~~~~~~~~~

The list of attributes for ``CredAccountOpenStack`` are:

	* ``glanceUrl`` (anyURI): the OpenStack glance endpoint URL to use
	* ``keystoneUrl`` (anyURI): the OpenStack keystone endpoint URL to use
	* ``login`` (string): the user login name to use
	* ``password`` (string): the user password to use
	* ``keystoneVersion`` (string): the keystone version this OpenStack instance is using (``v2.0`` or ``v3``)
	* ``name`` (string): the name of the cloud account
	* ``parentUri`` (anyURI): the uri resource of the parent object this cloud account is attached to
	* ``uri`` (anyURI): the uri resource of this cloud account
	* ``targetPlatform`` (:ref:`targetPlatform-object`): the target platform (see :ref:`targetplatform-object`) this cloud account is for
	* ``secretsMissing`` (boolean): a boolean flag to indicate that the secrets of this credAccount are missing and left empty in this object
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


