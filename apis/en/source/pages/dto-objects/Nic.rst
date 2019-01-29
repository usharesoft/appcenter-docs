.. Copyright FUJITSU LIMITED 2016-2019

.. _nic-object:

nic
===

Provides the information of a network interface card (NIC). This NIC information is attached to the installation profile belonging to an appliance template.

Attributes
~~~~~~~~~~

The list of attributes for ``nic`` are:

	* ``autoConnect`` (boolean): a boolean highlighting if the network card should be activated automatically
	* ``ipAddresses``: the list of static IP address information for this NIC (see :ref:`ipaddress-object`
	* ``ipv4Method``: the IPv4 method to be used (manual, dhcp, etc.)
	* ``ipv6Method``: the IPv6 method to be used (manual, dhcp, etc.)
	* ``name`` (string): the name of this NIC
	* ``parentUri`` (anyURI): the uri resource of the parent object this NIC is attached to (e.g. an install profile object)
	* ``type``: the type of NIC
	* ``order`` (int): the order of NIC
	* ``uri`` (anyURI): the uri resource of this NIC
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


