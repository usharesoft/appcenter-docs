.. Copyright 2017 FUJITSU LIMITED

.. _credaccountazureresourcemanager-object:

CredAccountAzureResourceManager
===============================

Holds specific account information for the new Microsoft Azure cloud platform: Azure Resource Manager.

Attributes
~~~~~~~~~~

The list of attributes for ``CredAccountAzureResourceManager`` are:

	* ``accountName`` (string): the storage account name to use
	* ``accountKey`` (string): the storage account access key to use
	* ``name`` (string): the name of the cloud account
	* ``parentUri`` (anyURI): the uri resource of the parent object this cloud account is attached to
	* ``uri`` (anyURI): the uri resource of this cloud account
	* ``targetPlatform`` (:ref:`targetPlatform-object`): the target platform (see :ref:`targetplatform-object`) this cloud account is for
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


