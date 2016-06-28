.. Copyright 2016 FUJITSU LIMITED

.. _credaccountflexiant-object:

CredAccountFlexiant
===================

Holds specific account information for the Flexiant cloud platform.

Attributes
~~~~~~~~~~

The list of attributes for ``CredAccountFlexiant`` are:

	* ``apiUsername`` (string): the api username to use
	* ``password`` (string): the password to use
	* ``userUuid`` (string): the user's unique id to use
	* ``wsdlUrl`` (string): the WSDL URL to use
	* ``name`` (string): the name of the cloud account
	* ``parentUri`` (anyURI): the uri resource of the parent object this cloud account is attached to
	* ``uri`` (anyURI): the uri resource of this cloud account
	* ``targetPlatform`` (:ref:`targetPlatform-object`): the target platform (see :ref:`targetplatform-object`) this cloud account is for
	* ``created`` (dateTime): the created date of the object
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


