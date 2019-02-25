.. Copyright FUJITSU LIMITED 2016-2019

.. _credaccountaws-object:

CredAccountAws
==============

Holds specific account information for the Amazon Web Services (AWS) cloud platform.

Attributes
~~~~~~~~~~

The list of attributes for ``CredAccountAws`` are:

	* ``accessKeyId`` (string): the AWS access key to use
	* ``accountNumber`` (string): the AWS account number to use
	* ``keyPairName`` (string): the key pair name (for EBS) to use
	* ``secretAccessKeyId`` (string): the secret access key to use
	* ``baseCertificatesUri`` (anyURI): the uri resource to get all the certificates for this cloud account
	* ``certificates``: a list of certificate files (see :ref:`certificate-object`)
	* ``certificateUris`` (:ref:`UriList-object`): a list of uri resources for the :ref:`certificate-object` objects
	* ``name`` (string): the name of the cloud account
	* ``parentUri`` (anyURI): the uri resource of the parent object this cloud account is attached to
	* ``uri`` (anyURI): the uri resource of this cloud account
	* ``targetPlatform`` (:ref:`targetPlatform-object`): the target platform (see :ref:`targetplatform-object`) this cloud account is for
	* ``secretsMissing`` (boolean): a boolean flag to indicate that the secrets of this credAccount are missing and left empty in this object
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


