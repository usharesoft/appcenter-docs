.. Copyright 2017 FUJITSU LIMITED

.. _repositoryupdate-object:

repositoryUpdate
================

Holds information used by an update of a :ref:`repository-object`

Attributes
~~~~~~~~~~

The list of attributes for ``repositoryUpdate`` are:

	* ``uri`` (anyURI): the uri resource of this repository update object
	* ``status`` (:ref:`status-object`): the current status of the update
	* ``created`` (dateTime): the created date of the object
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


