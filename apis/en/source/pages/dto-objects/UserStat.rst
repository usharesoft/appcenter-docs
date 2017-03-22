.. Copyright 2017 FUJITSU LIMITED

.. _userstat-object:

userStat
========

Holds statistical data for a user of the platform.

Attributes
~~~~~~~~~~

The list of attributes for ``userStat`` are:

	* ``type`` (string): statistic type (APPLIANCE | SOFTWARE_BUNDLE | GENERATION_APPLIANCE | GENERATION_SCAN | OS_APPLIANCE | FORMAT_APPLIANCE | OS_SCAN | FORMAT_SCAN)
	* ``currNb`` (int): current number of items
	* ``dataPoints``: a list of :ref:`statdatapoint-object` objects.


