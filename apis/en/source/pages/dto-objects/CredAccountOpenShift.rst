.. Copyright 2018 FUJITSU LIMITED

.. _credaccountopenshift-object:

CredAccountOpenShift
====================

Holds specific account information for an OpenShift Registry platform.

Attributes
~~~~~~~~~~

The list of attributes for ``CredAccountOpenShift`` are:

	* ``registryUrl`` (anyURI): the OpenShift Registry URL to use
	* ``token`` (string): the authentication token to use
	* ``name`` (string): the name of the cloud account
	* ``parentUri`` (anyURI): the uri resource of the parent object this cloud account is attached to
	* ``uri`` (anyURI): the uri resource of this cloud account
	* ``targetPlatform`` (:ref:`targetPlatform-object`): the target platform (see :ref:`targetplatform-object`) this cloud account is for
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


