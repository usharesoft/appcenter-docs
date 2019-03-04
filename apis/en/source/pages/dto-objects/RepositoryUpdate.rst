.. Copyright FUJITSU LIMITED 2016-2019

.. _repositoryupdate-object:

repositoryUpdate
================

Object holding the update information of a :ref:`repository-object`.

Attributes
~~~~~~~~~~

The list of attributes for ``repositoryUpdate`` are:

	* ``uri`` (anyURI): the uri resource of this repository update object
	* ``status`` (:ref:`status-object`): the current status of the update
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


