.. Copyright 2018 FUJITSU LIMITED

.. _blueprintservice-object:

blueprintService
================

Describes a blueprint service.

Attributes
~~~~~~~~~~

The list of attributes for ``blueprintService`` are:

	* ``serviceId`` (string): the id of this blueprint service. It can be used in ochestrator configuration, see blueprints example provided in UForge user guide documentation for details.
	* ``minMemory`` (integer): the minimal memory required for this blueprint service
	* ``minCores`` (integer): the minimal number of cores required for this blueprint service
	* ``config`` (string): the extra configuration for this blueprint service
	* ``applianceSummary`` (:ref:`applianceSummary-object`): the appliance summary used to generate this blueprint service node


