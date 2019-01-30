.. Copyright FUJITSU LIMITED 2019

.. _blueprintpipelineaws-object:

BlueprintPipelineAws
====================

Holds the information on the preparation of a blueprint to the Amazon Web Services (AWS) environment.

Attributes
~~~~~~~~~~

The list of attributes for ``BlueprintPipelineAws`` are:

	* ``region`` (string): the region where the blueprint is prepared
	* ``blueprintUri`` (anyURI): the blueprint uri related to this preparation
	* ``credAccountUri`` (anyURI): the uri of the cloud account used by this preparation
	* ``tag`` (string): the tag information
	* ``name`` (string): the pipeline name
	* ``status`` (:ref:`status-object`): the status of the pipeline
	* ``uri`` (anyURI): the uri of the pipeline
	* ``stages``: the list of stages to perform the pipeline (see :ref:`stage-object`)
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


