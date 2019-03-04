.. Copyright FUJITSU LIMITED 2016-2019

.. _appliancestats-object:

applianceStats
==============

Provides the statistic information of all the appliance templates for a user. This includes:

- the number of appliance templates

- the number of machine images generated and a breakdown on the format types used

- the breakdown on the operating systems used

- the number appliance templates shared (e.g. to workspaces)

Attributes
~~~~~~~~~~

The list of attributes for ``applianceStats`` are:

	* ``curr`` (int): the value
	* ``currOSUsage``: list of :ref:`statdatapoint-object` for the breakdown on operating system types currently being used for the user's appliance templates
	* ``currShared`` (int): number of appliance templates currently being shared (e.g. in a workspace)
	* ``currUsage``: the list of :ref:`statdatapoint-object` objects holding the statistic history
	* ``total`` (int): the total value (over time regardless if the object in question has been deleted)
	* ``totalOSUsage``: list of :ref:`statdatapoint-object` for the breakdown on operating system types that have been used for the user's appliance templates
	* ``totalShared`` (int): number of appliance templates that have been shared (e.g. in a workspace)
	* ``totalUsage``: the list of :ref:`statdatapoint-object` objects holding the statistic history (over time regardless if the object in question has been deleted)


