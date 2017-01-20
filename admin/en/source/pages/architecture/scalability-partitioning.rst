.. Copyright 2017 FUJITSU LIMITED

.. _scalability-partitioning:

Scalability through Partitioning
--------------------------------

UForge was designed from the ground up to scale to meet the needs of businesses and service providers with 100,000s of users.  The key to scaling is partitioning.  Effective partitioning is based on leveraging “locality of reference” for both processing and data – if certain servers are specialized to solve a subset of the bigger problem, then the essential code and date are more likely to be in memory or close at hand.  Partitioning techniques include vertical partitioning of functional tasks and horizontal partitioning of data and associated processing.  Partitioning also helps to implement security to the platform.

Partitioning is increased by other distributed system techniques like automated replication, load balancing and failover.

**Vertical Partitioning** allows complex processing tasks to be divided into subtasks that can be independently optimized and managed.  Vertical partitioning in UForge primarily consists of off-loading or splitting the I/O intensive generation tier, web service tier and database tier.  

This allows the administrator to scale-up independently the number of CPUs, RAM and disk size for each of the tiers.  

**Horizontal Partitioning** is crucial for large scale deployments.  UForge is horizontally partitioned for larger deployments where thousands of users are required to interact simultaneously with the system.  

One of the big bottlenecks, however, in such architectures is the database.  When scaling out the web service tier, the number database reads and writes increases, and therefore the database becomes saturated.  

Firstly UForge uses Db sharding.  This basically consists of splitting up the data into buckets (shards) that can be stored on more than one database instance.  The second is caching (memcached) which is an in-memory key-value store for small chunks of arbitrary data from results of database calls. This reduces the amount of potential reads directly into the database.  

To help scale out further you can also set up a database cluster, providing multiple database instances to the web service tier (the default database service does not support clustering).

Such bottlenecks can also be reduced by scaling-up (vertical partitioning) where more RAM and CPU  is provided to the machine. 

The generation cluster is intrinsically scalable, allowing the administrator to easily add new compute nodes to scale-out the number of simultaneous generations.  OAR also provides the ability to deploy multiple schedulers and to configure them in master-slave mode.



