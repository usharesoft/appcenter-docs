.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _route-object:

route
=====

Describes a networking route. Used as part of a NIC.

Attributes
~~~~~~~~~~

The list of attributes for ``route`` are:

	* ``address`` (string): the IP address
	* ``gateway`` (string): the gateway value
	* ``metric`` (int): the metric value
	* ``netmask`` (string): the netmask value
	* ``parentUri`` (anyURI): the uri resource of the parent object this route is attached to
	* ``uri`` (anyURI): the uri resource of this route
	* ``created`` (dateTime): the created date of the object
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


