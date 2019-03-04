.. Copyright FUJITSU LIMITED 2016-2019

.. _milestone-object:

milestone
=========

Marks a specific point along a an operating system's timeline. This can then be used to help users rollback or forward package updates of their appliance templates. Milestones are created and maintained by a platform administrator for each of the operating systems registered with the platform.

Attributes
~~~~~~~~~~

The list of attributes for ``milestone`` are:

	* ``date`` (dateTime): the date for this milestone
	* ``description`` (string): a description of the milestone
	* ``name`` (string): the name or title of the milestone
	* ``source`` (string): the source of the Milestone. Reserved source : distribution (populated automatically by the platform population tools)
	* ``uri`` (anyURI): the uri resource of this milestone object
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


