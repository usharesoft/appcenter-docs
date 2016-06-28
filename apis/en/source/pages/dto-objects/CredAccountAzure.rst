.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _credaccountazure-object:

CredAccountAzure
================

Holds specific account information for the Microsoft Azure cloud platform.

Attributes
~~~~~~~~~~

The list of attributes for ``CredAccountAzure`` are:

	* ``accountName`` (string): the account name to use
	* ``baseCertificatesUri`` (anyURI): the uri resource to get all the certificates for this cloud account
	* ``certificates``: a list of certificate files (see :ref:`certificate-object`)
	* ``certificateUris`` (:ref:`UriList-object`): a list of uri resources for the :ref:`certificate-object` objects
	* ``name`` (string): the name of the cloud account
	* ``parentUri`` (anyURI): the uri resource of the parent object this cloud account is attached to
	* ``uri`` (anyURI): the uri resource of this cloud account
	* ``targetPlatform`` (:ref:`targetPlatform-object`): the target platform (see :ref:`targetplatform-object`) this cloud account is for
	* ``created`` (dateTime): the created date of the object
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


