.. Copyright 2018 FUJITSU LIMITED

.. _abstractpipeline-object:

abstractPipeline
================

Holds all the meta-data of a pipeline. Contains the list of stages to perform a pipeline.

Attributes
~~~~~~~~~~

The list of attributes for ``abstractPipeline`` are:

	* ``tag`` (string): the tag information
	* ``name`` (string): the pipeline name
	* ``status`` (:ref:`status-object`): the status of the pipeline
	* ``uri`` (anyURI): the uri of the pipeline
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


