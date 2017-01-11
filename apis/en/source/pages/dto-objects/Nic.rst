.. Copyright 2016 FUJITSU LIMITED

.. _nic-object:

nic
===

Describes a network card information. These NICs are part of an installation profile of an appliance template.

Attributes
~~~~~~~~~~

The list of attributes for ``nic`` are:

	* ``autoConnect`` (boolean): a boolean highligthing if the network card should be activated automatically
	* ``default`` (boolean): a boolean hightlighting if the network card is the default machine network card
	* ``dhcpClientId`` (string): the dhcp client id
	* ``ipAddresses``: the list of static IP address information for this NIC (see :ref:`ipaddress-object`
	* ``ipAddressesUri`` (anyURI): the uri resource to retrieve the IP address information for this NIC
	* ``ipv4DnsServers`` (string): the space separated list of IPv4 DNS servers
	* ``ipv4Method`` (int): the IPv4 method to be used (manual, dhcp, etc.)
	* ``ipv4SearchDomains`` (string): the space separated list of IPv4 search domains
	* ``ipv6DnsServers`` (string): the space separated list of IPv6 DNS servers
	* ``ipv6Method`` (int): the IPv6 method to be used (manual, dhcp, etc.)
	* ``ipv6SearchDomains`` (string): the space separated list of IPv6 search domains
	* ``macAddress`` (string): the MAC address for this NIC card
	* ``name`` (string): the name of this NIC
	* ``parentUri`` (anyURI): the uri resource of the parent object this NIC is attached to (e.g. an install profile object)
	* ``routes``: the list of :ref:`route-object` objects
	* ``routesUri`` (anyURI): the uri to get all the :ref:`route-object` objects
	* ``type`` (int): the type of NIC
	* ``uri`` (anyURI): the uri resource of this NIC
	* ``created`` (dateTime): the created date of the object
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


