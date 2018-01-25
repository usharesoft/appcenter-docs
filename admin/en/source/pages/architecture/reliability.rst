.. Copyright 2018 FUJITSU LIMITED

.. _reliability:

Reliability
-----------

Fault tolerance is an important consideration for large-scale deployments.  UForge platform has several types of data that must be replicated.

	* The meta-data stored in the SQL store. The meta-data SQL store is replicated by using either master-slave or clustering.  Both these configurations are supported by Percona Server.  These configurations help scale-out the system and provide a level of fault tolerance if one of the database servers fails.
	* The LDAP service data can be replicated over multiple LDAP instances via MMR (Multi-Master Replication)
	* Binary data including operating system packages, project packages, uploaded software packages, license files, generated images and logo images. The binary data is stored on a storage system.  This can be on a local filesystem of the database or on a NAS or SAN.  This data is transparently replicated using RAID techniques.

In order to make the web service tier fault tolerant, multiple web servers can be deployed and load balanced.  The administrator may also wish to have multiple load balancers in case the load balancer itself fails.


.. _security:

Security
--------

UForge communicates with clients using HTTPS to ensure a secure connection. However, when deploying UForge, other security measures should be considered:

	* Add a firewall in front of the web service tier, to only expose the HTTPS port.
	* Provide a logical sub-network to protect the database, LDAP, storage and generation cluster (DMZ).
