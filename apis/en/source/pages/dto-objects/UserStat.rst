.. Copyright FUJITSU LIMITED 2016-2019

.. _userstat-object:

userStat
========

Holds statistical data for a user of the platform.

Attributes
~~~~~~~~~~

The list of attributes for ``userStat`` are:

	* ``type``: statistic type (APPLIANCE | FORMAT_APPLIANCE | FORMAT_SCAN | GENERATION_APPLIANCE | GENERATION_SCAN | OS_APPLIANCE | OS_SCAN | SCAN | SOFTWARE_BUNDLE)
	* ``currNb`` (int): current number of items
	* ``dataPoints``: a list of :ref:`statdatapoint-object` objects.
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


