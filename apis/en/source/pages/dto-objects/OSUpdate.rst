.. Copyright FUJITSU LIMITED 2016-2019

.. _osupdate-object:

osUpdate
========

Provides the information of a new package available in the an operating system repository compared with an existing package in an appliance template's ``os profile``.

Attributes
~~~~~~~~~~

The list of attributes for ``osUpdate`` are:

	* ``currPkg`` (:ref:`package-object`): the current package information (see :ref:`package-object`)
	* ``date`` (dateTime): the end date where to calculate the available updates for the ``currPkg``
	* ``newPkg`` (:ref:`package-object`): the proposed new package version to update to
	* ``numUpdates`` (int): the number of updates available for this package from the current package version to the ``date`` value
	* ``pkgs``: the list of package updates available between ``currPkg`` version and the ``date`` provided


