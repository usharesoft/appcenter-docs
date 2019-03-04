.. Copyright FUJITSU LIMITED 2016-2019

.. _artifactcredaccount-object:

artifactCredAccount
===================

Holds artifact account information for a software artifact. These credentials allow the platform to communicate with the remote repository to fetch to add files for a software or project.

Attributes
~~~~~~~~~~

The list of attributes for ``artifactCredAccount`` are:

	* ``uri`` (anyURI): the uri resource of this artifact account
	* ``parentUri`` (anyURI): the uri resource of the parent object this artifact account is attached to
	* ``name`` (string): the name of the artifact account
	* ``host`` (string): the hostname of the artifact account
	* ``login`` (string): the login (optional) to connect to the artifact account
	* ``password`` (string): the password (optional) to connect to the artifact account
	* ``type``: the type of the artifact account, for example ``ftp``
	* ``port`` (int): the port of the artifact account
	* ``softwareArtifactsUri`` (anyURI): the uri resource to retrieve artifacts from the artifact account
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


