.. Copyright FUJITSU LIMITED 2016-2019

.. _statdatapoint-object:

statDataPoint
=============

Generic object holding a statistic data point.

Attributes
~~~~~~~~~~

The list of attributes for ``statDataPoint`` are:

	* ``date`` (dateTime): the date of this data point
	* ``distribArch`` (string): the architecture of the operating system
	* ``distribName`` (string): the operating system name
	* ``distribVersion`` (string): the operating system version
	* ``endDate`` (dateTime): the stat timestamp
	* ``errorMessage`` (string): error message
	* ``message`` (string): message for this data point
	* ``name`` (string): the name or tooltip for this data point
	* ``nb`` (long): the value for this data point
	* ``percentage`` (float): the percentage
	* ``startDate`` (dateTime): the timestamp from where this stat begins
	* ``total`` (long): the total value for this stat
	* ``type`` (string): the type of stat
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


