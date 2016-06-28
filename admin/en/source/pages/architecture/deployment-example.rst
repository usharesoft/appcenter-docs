.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _deployment-example:

Deployment Example
------------------

How to organize your UForge configuration depends on the specific customer needs.  This may include:

   * The number of users as well as the number of simultaneous connections to the platform
   * The number of simultaneous generations
   * The number of projects in the project catalog
   * The SLA of UForge
   * Whether the service needs to be reached over multiple sites
   * Whether UForge is exposed to 3rd party customers and partners, or for internal use only

Note that UForge can be deployed on physical machines or on a virtual or cloud platform.  The word 'node' describes either the specification of a physical machine or a virtual machine instance running in the virtual or cloud environment.

.. _network-topology:

Network Topology
----------------

In order to optimize scalability, you should use a dedicated network subnet for UForge service.

If you want to deploy a public UForge service, you can use a public IP address for each component.

We recommend using a firewall with the NAT technology to map a public IP address to a private IP address. This allows you to use public IP addresses only for the Web Front-end and the Web Service. The other services stay hidden from the rest of the world.

For a private network, you can use a NAT translation, but it is better to use the firewall in gateway mode and filter the traffic. This way you can open ports on the different services.


.. _minimum-sw-topology:

Minimum Software Topology
-------------------------

For the minimum software topology, use all services without security or fault tolerance.

For each of these components we recommend the following minimal (hardware or virtual) specification:

+----------------+------------+------------+----------------+--------------------------------+
| Component      | RAM        | CPU        | Hard Drive     | Comment                        |
+================+============+============+================+================================+
| Web Front-End  | 3 GB       | 2          | 15 GB          |                                |
+----------------+------------+------------+----------------+--------------------------------+
| Web Service    | 3 GB       | 2          | 15 GB          |                                |
+----------------+------------+------------+----------------+--------------------------------+
| Generation     | 2 GB       | 1          | 15 GB          |                                |
| Cluster        |            |            |                |                                |
+----------------+------------+------------+----------------+--------------------------------+
| Compute Node   | 4 GB       | 2          | 30 GB          | If you have a good NAS/SAN you |
|                |            |            |                | reduce the disk space to 15 GB |
|                |            |            |                | if you map the directory       |
|                |            |            |                | /space/REPOS with the NAS/SAN  |
+----------------+------------+------------+----------------+--------------------------------+
| SYNCOPE        | 2 GB       | 2          | 15 GB          |                                |
| Web Service    |            |            |                |                                |
+----------------+------------+------------+----------------+--------------------------------+
| Database       | 4 GB       | 4          | 100 GB         | If you have a good NAS/SAN you |
|                |            |            |                | reduce the disk space to 15 GB |
|                |            |            |                | if you map the directory       |
|                |            |            |                | /space/REPOS with the NAS/SAN  |
+----------------+------------+------------+----------------+--------------------------------+
| LDAP           | 2 GB       | 2          | 15 GB          |                                |
+----------------+------------+------------+----------------+--------------------------------+
| NAS/SAN        | 2 GB       | 2          |                |                                |
+----------------+------------+------------+----------------+--------------------------------+

Security Options
----------------

To increase the security of the UForge service, you can add replication in master/slave of the database component and the LDAP component.

The minimal requirement is 1 slave for the database and 1 slave for the LDAP service. Of course, you can add more slaves for each of these services.

See the specification of these options:

+----------------+------------+------------+----------------+--------------------------------+
| Component      | RAM        | CPU        | Hard Drive     | Comment                        |
+================+============+============+================+================================+
| Database Slave | 2 GB       | 1          | 25 Go          | If you have a good NAS/SAN you |
|                |            |            |                | reduce the disk space to 15 GB |
|                |            |            |                | if you map the directory       |
|                |            |            |                | /var/lib/mysql to the NAS/SAN  |
+----------------+------------+------------+----------------+--------------------------------+
| LDAP Slave     | 1 GB       | 1          | 15 Go          |                                |
+----------------+------------+------------+----------------+--------------------------------+

High Availability
-----------------

High Availability can be attained with the redundancy of all services. However, the database and the LDAP service have not yet been tested with the clustering mode.

For the moment we recommend using the “security options” for these services. This is a point of failure.

All other services can be clustered. For clustering a service you will need a pool of load balancers (physical or virtual). 

+----------------+------------+------------+----------------+--------------------------------+
| Component      | RAM        | CPU        | Hard Drive     | Comment                        |
+================+============+============+================+================================+
| Load Balancer  | 2 GB       | 2          | 15 GB          |                                |
+----------------+------------+------------+----------------+--------------------------------+


All other services keep the same configuration, as seen above.
