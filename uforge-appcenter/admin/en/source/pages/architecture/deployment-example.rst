.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _deployment-example:

Deployment Example
------------------

How to organize your UForge configuration depends on the specific customer needs.  This may include:

   * The number of users as well as the number of simultaneous connections to the platform
   * The number of simultaneous generations
   * The number of operating systems offered by UForge
   * The number of projects in the project catalog
   * The SLA of UForge
   * Whether the service needs to be reached over multiple sites
   * Whether UForge is exposed to 3rd party customers and partners, or for internal use only

Note that UForge can be deployed on physical machines or on a virtual or cloud platform.  The word 'node' describes either the specification of a physical machine or a virtual machine instance running in the virtual or cloud environment.

.. _network-topology:

Network Topology
----------------

In order to optimize scalability, you should use a dedicated network subnet for UForge service.

If you want to deploy a public UForge service, you can use a public IP address for each component:

UShareSoft recommends using a firewall with the NAT technology to map a public IP address to a private IP address. This allows you to use public IP addresses only for the Web Front-end and the Web Service. The other services stay hidden from the rest of the world.

For a private network, you can use a NAT translation, but it is better to use the firewall in gateway mode and filter the traffic. This way you can open ports on the different services.


.. _minimum-sw-topology:

Minimum Software Topology
-------------------------

For the minimum software topology, use all services without security or fault tolerance.

For each of these components we recommend the following minimal (hardware or virtual) specification:
