.. Copyright FUJITSU LIMITED 2016-2019

.. _credaccountvclouddirector-object:

CredAccountVCloudDirector
=========================

Holds specific account information for the VMware VCD platform.

Attributes
~~~~~~~~~~

The list of attributes for ``CredAccountVCloudDirector`` are:

	* ``hostname`` (string): the server hostname for the VCD platform
	* ``organizationName`` (string): the organization name to use
	* ``login`` (string): the user login name to use
	* ``password`` (string): the user password to use
	* ``port`` (int): the port number of the VCD platform
	* ``proxyHost`` (string): the proxy hostname to use (if there is a proxy setup)
	* ``proxyPort`` (int): the proxy port to use (if there is a proxy setup)
	* ``name`` (string): the name of the cloud account
	* ``parentUri`` (anyURI): the uri resource of the parent object this cloud account is attached to
	* ``uri`` (anyURI): the uri resource of this cloud account
	* ``targetPlatform`` (:ref:`targetPlatform-object`): the target platform (see :ref:`targetplatform-object`) this cloud account is for
	* ``secretsMissing`` (boolean): a boolean flag to indicate that the secrets of this credAccount are missing and left empty in this object
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


