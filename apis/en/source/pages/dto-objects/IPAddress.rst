.. Copyright FUJITSU LIMITED 2016-2019

.. _ipaddress-object:

ipAddress
=========

Holds IP address information when setting NICs on an appliance template

Attributes
~~~~~~~~~~

The list of attributes for ``ipAddress`` are:

	* ``address`` (string): the static IP address to set on the NIC
	* ``gateway`` (string): the gateway to set on the NIC
	* ``netmask`` (string): the netmask to set on the NIC
	* ``parentUri`` (anyURI): the uri resource of the parent object this object is attached to (e.g. :ref:`nic-object`)
	* ``type`` (int): IP address type (IPv4 or IPv6)
	* ``uri`` (anyURI): the uri resource of this IP address object
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


