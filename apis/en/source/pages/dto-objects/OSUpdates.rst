.. Copyright FUJITSU LIMITED 2016-2019

.. _osupdates-object:

osUpdates
=========

Holds the operating system updates available for an appliance template. This is the result of comparing the appliance template's ``os profile`` package list with the operating system repository registered on the platform. Versions of each package are compared, all new package versions are provided in this object.

Attributes
~~~~~~~~~~

The list of attributes for ``osUpdates`` are:

	* ``availUpdates``: the list of package updates (see :ref:`osupdate-object`) available for the list of packages in the ``os profile``
	* ``osEOLDate`` (dateTime): the date where the operating system will receive no more updates
	* ``osReleaseDate`` (dateTime): the date where the operating system was released
	* ``simulation``: the list of package updates (see :ref:`osupdate-object`) available after a simulation
	* ``simulationDate`` (dateTime): the end date where to calculate the available updates (for a simulation)


