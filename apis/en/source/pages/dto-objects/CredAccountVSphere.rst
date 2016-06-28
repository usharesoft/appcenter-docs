.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _credaccountvsphere-object:

CredAccountVSphere
==================

Holds specific account information for the VMware vSphere Center platform.

Attributes
~~~~~~~~~~

The list of attributes for ``CredAccountVSphere`` are:

	* ``hostname`` (string): the server hostname for the vSphere platform
	* ``login`` (string): the user login name to use
	* ``password`` (string): the user password to use
	* ``port`` (int): the port number of the vSphere platform
	* ``proxyHost`` (string): the proxy hostname to use (if there is a proxy setup)
	* ``proxyPort`` (int): the proxy port to use (if there is a proxy setup)
	* ``name`` (string): the name of the cloud account
	* ``parentUri`` (anyURI): the uri resource of the parent object this cloud account is attached to
	* ``uri`` (anyURI): the uri resource of this cloud account
	* ``targetPlatform`` (:ref:`targetPlatform-object`): the target platform (see :ref:`targetplatform-object`) this cloud account is for
	* ``created`` (dateTime): the created date of the object
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


