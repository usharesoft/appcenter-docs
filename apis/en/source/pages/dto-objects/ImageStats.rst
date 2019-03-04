.. Copyright FUJITSU LIMITED 2016-2019

.. _imagestats-object:

imageStats
==========

Provides statistics for a machine image. This includes the number of times downloaded or registered to a target cloud environment.

Attributes
~~~~~~~~~~

The list of attributes for ``imageStats`` are:

	* ``curr`` (int): the value
	* ``currDownloaded`` (int): number of downloads of this machine image
	* ``currFormatUsage``: number of times a specific format has been used
	* ``total`` (int): the total value (over time regardless if the object in question has been deleted)
	* ``totalDownloaded`` (int): the total number of times a machine image has been downloaded (even if the referenced machine image has been deleted)
	* ``totalFormatUsage``: list of :ref:`statdatapoint-object` for the breakdown on format types used for generating machine images
	* ``totalPublished`` (int): the total number of times this machine image has been published


