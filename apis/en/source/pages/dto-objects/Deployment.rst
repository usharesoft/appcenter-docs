.. Copyright FUJITSU LIMITED 2016-2019

.. _deployment-object:

deployment
==========

Provides all the information of a deployment. A deployment is a set of one or more running instances (workloads).

Attributes
~~~~~~~~~~

The list of attributes for ``deployment`` are:

	* ``uri`` (anyURI): the uri of the deployment
	* ``applicationId`` (string): the application id of the deployment
	* ``name`` (string): the name of the deployment
	* ``creationDate`` (dateTime): the date of the deployment
	* ``blueprintName`` (string): the blueprint name used to do this deployment
	* ``iconUrl`` (anyURI): the icon url of the application deployed
	* ``state`` (string): the deployment state
	* ``sourceSummary`` (:ref:`sourceSummary-object`): the deployment source (Blueprint, Appliance or Scan)


