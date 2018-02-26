.. Copyright 2017 FUJITSU LIMITED

.. _credaccountcloudstack-object:

CredAccountCloudStack
=====================

Holds specific account information for the CloudStack cloud platform.

Attributes
~~~~~~~~~~

The list of attributes for ``CredAccountCloudStack`` are:

	* ``endpointUrl`` (anyURI): the CloudStack URL to use
	* ``publicApiKey`` (string): the public API key of the user
	* ``secretApiKey`` (string): the secret API key of the user
	* ``name`` (string): the name of the cloud account
	* ``parentUri`` (anyURI): the uri resource of the parent object this cloud account is attached to
	* ``uri`` (anyURI): the uri resource of this cloud account
	* ``targetPlatform`` (:ref:`targetPlatform-object`): the target platform (see :ref:`targetplatform-object`) this cloud account is for
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


