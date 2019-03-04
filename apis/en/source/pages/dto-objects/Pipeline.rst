.. Copyright FUJITSU LIMITED 2016-2019

.. _pipeline-object:

pipeline
========

Holds all the meta-data of a pipeline. Contains the list of stages to perform a pipeline.

Attributes
~~~~~~~~~~

The list of attributes for ``pipeline`` are:

	* ``tag`` (string): the tag information
	* ``name`` (string): the pipeline name
	* ``status`` (:ref:`status-object`): the status of the pipeline
	* ``uri`` (anyURI): the uri of the pipeline
	* ``stages``: the list of stages to perform the pipeline (see :ref:`stage-object`)
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


