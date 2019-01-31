.. Copyright FUJITSU LIMITED 2016-2019

.. _scanstage-object:

scanStage
=========

Holds all the meta-data of the scan stage of a migration.

Attributes
~~~~~~~~~~

The list of attributes for ``scanStage`` are:

	* ``family``: the family type for the operating system of the scan
	* ``scannedInstanceUri`` (anyURI): the uri resource of the scannedInstance
	* ``pipelineUri`` (anyURI): the uri of the parent pipeline
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


