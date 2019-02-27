.. Copyright FUJITSU LIMITED 2016-2019

.. _blueprintdeploymentaws-object:

BlueprintDeploymentAws
======================

Provides the information required to deploy a blueprint to the Amazon Web Services (AWS) environment.

Attributes
~~~~~~~~~~

The list of attributes for ``BlueprintDeploymentAws`` are:

	* ``region`` (string): the region where this machine image is registered
	* ``name`` (string): the blueprint deployment name used for this deployment
	* ``credAccountUri`` (anyURI): the cloud account uri used for this deployment (see :ref:`credaccount-object`)
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


