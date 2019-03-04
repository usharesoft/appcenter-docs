.. Copyright FUJITSU LIMITED 2016-2019

.. _winservice-object:

winService
==========

Provides information of a Windows Service

Attributes
~~~~~~~~~~

The list of attributes for ``winService`` are:

	* ``serviceName`` (string): The name of the service
	* ``displayName`` (string): the human readable name of the service
	* ``description`` (string): the description of the service
	* ``parentUri`` (anyURI): the resource uri of the parent :ref:`windowsprofile-object` object
	* ``uri`` (anyURI): the resource uri of the service
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


