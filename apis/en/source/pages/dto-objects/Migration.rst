.. Copyright FUJITSU LIMITED 2016-2019

.. _migration-object:

migration
=========

Holds all the meta-data of a migration. Contains the list of stages to perform a migration.

Attributes
~~~~~~~~~~

The list of attributes for ``migration`` are:

	* ``cancellable`` (boolean): a boolean highlighting if the Migration is cancellable or not
	* ``tag`` (string): the tag information
	* ``name`` (string): the pipeline name
	* ``status`` (:ref:`status-object`): the status of the pipeline
	* ``uri`` (anyURI): the uri of the pipeline
	* ``stages``: the list of stages to perform the pipeline (see :ref:`stage-object`)
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


