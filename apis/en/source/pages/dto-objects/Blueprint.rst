.. Copyright FUJITSU LIMITED 2016-2019

.. _blueprint-object:

blueprint
=========

Describes a blueprint. A blueprint modelizes a set of :ref:`blueprintService-object` and the information required to deploy these services on different nodes in a container or cloud environment.

Attributes
~~~~~~~~~~

The list of attributes for ``blueprint`` are:

	* ``name`` (string): the name of the blueprint
	* ``version`` (string): the version of the blueprint
	* ``revision`` (string): the revision of the blueprint
	* ``uri`` (anyURI): the uri resource to retrieve the blueprint
	* ``description`` (string): the description of the blueprint
	* ``yaml`` (string): the blueprint yaml content
	* ``deployUri`` (anyURI): the uri resource to deploy the blueprint
	* ``predeployUri`` (anyURI): the uri resource to retrieve BlueprintPredeploy
	* ``prepareUri`` (anyURI): the uri resource to launch a pipeline based on this blueprint
	* ``pipelines``: the list of Pipelines used to prepare this blueprint
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


