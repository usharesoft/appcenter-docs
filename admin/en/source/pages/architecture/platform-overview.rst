.. Copyright 2018 FUJITSU LIMITED

.. _platform-overview:

UForge Platform Overview
========================

UForge is a scalable multi-tenant platform.  UForge can be split into the following distinct parts.

	* UForge Server – This contains all the business logic of UForge, handling all incoming user requests.
	* Meta-data SQL Store – A database holding all the configuration information and data of the platform.
	* LDAP Service – LDAP holding user authentication and access information
	* IDM Service – Authentication and authorization module
	* Generation Cluster – A grid engine for scheduling and executing image generations
	* Event-bus – Rabbit MQ
	* Proxy cache - Squid

The UForge platform can be deployed on physical machines or in a virtualized or cloud environment.

.. image:: /images/UForge-architecture_2.jpg

**UForge Server.** The UForge Server is a RESTful (Representational State Transfer) web service built on top of Java and using the JSR-311 reference implementation (project Jersey).  UForge Server is based on the design principles of REST and Resource Oriented Architecture (ROA).  Resources are references with a unique global identifier (URI).  UForge Server uses the semantics of the HTTP protocol to manipulate these resources. The HTTP response codes are used to determine whether a user's request was treated successfully or not.

Information is returned to the client in either XML or JSON, depending on the ``Accept-Type`` header attribute used by the client.  If no ``Accept-Type`` header is provided, XML is returned by default.
To ensure security, communication with the UForge Server is done via HTTPS.
UForge Server provides authentication (AuthN) and authorization (AuthZ) modules.  These modules can be customized by the customer to provide or use an alternative mechanism for authentication and authorization.  By default these modules communicate with the IDM service.  This service determines whether a request has the correct authentication and the correct access.

The UForge Server interacts with the SQL Store using **Hibernate**.  Hibernate is a high-performance Object/Relational persistence and query service.  Hibernate maps from Java classes to database tables and from Java data types to SQL data types. It provides data query and retrieval facilities, providing a buffer between the two data representations and enables a more elegant use of object orientation on the Java side.
The UForge Server is deployed inside a web/application server container.  UForge, by default, uses Tomcat as the application server container.

**Proxy Cache.** UForge AppCenter includes a proxy cache. The proxy used is Squid. It is used for caching and centralizes all outgoing traffic. This improves the performance of UForge, specifically for the population of distribution repositories.

**IDM Service.** The UForge Identity management module is based on Apache Syncope (APL2 license).  The module allows management of auditing (reports), policies, roles, users, tasks and entitlements.  At present UForge uses this module for authentication and role-based access control (authorization).  The persistence store for the UForge IDM is the SQL Store (described below) and there is a resource connector to the LDAP Service for storage of roles/users and entitlements in an ldap repository backend.  The IDM service is deployed inside a web/application server container.  UForge, by default, uses Tomcat as the application server container.

This IDM Service can be extended to provide a wider identity and access management (IAM) integration to an existing enterprise or corporate IAM system or to a brand new standards compliant IAM system(s) by using open source industry standard resource connectors.

**LDAP.**  This service is an industry standard powerful AuthN ldap (v3) pure java server, based on the open source ForgeRock's OpenDJ offering. This can be run in single instance mode or multi-master replication mode for robustness.

**SQL Store.** This is a relational database holding all the meta-data of UForge.  Meta-data includes such items as:

	* Appliance information including which operating system packages are included, install profile, middleware and configuration information.
	* Images that have been generated from an appliance
	* Images that have been published to a virtual or cloud platform
	* Package information for an operating system
	* Third party project software components

By default MariaDB is used as the SQL Store.

**Generation Cluster.**  Image generation is I/O intensive and may take several minutes to complete.  Consequently an HPC cluster is used to execute image generation jobs.  There are two parts to this cluster:

	* One or more compute nodes to execute a generation job
	* A resource management system or batch scheduler that manages the reservation and access to the compute nodes

The resource management system holds its configuration information inside the meta-data SQL Store.  The generation cluster is based on an open source project called OAR that is heavily used in production clusters of over 5000 nodes capable of handling over 5 million jobs.

**Event-bus.** UForge AppCenter uses RabbitMQ as an event bus. This event bus allows UForge administrators to track a number of user events on the platform. For more information on managing Rabbit MQ see: `http://rabbitmq.com <http://rabbitmq.com>`_

**UForge Clients.**  UForge provides a client, called UForge Portal that connects to UForge Server via HTTPS. This provides an interactive, visual experience when designing appliances or application stacks that can be deployed on physical, virtual and cloud environments.  Consequently, UForge does not need to provide any presentation information to the client, greatly reducing the information (and therefore bandwidth)  sent to the client.

.. image:: /images/uforge-arch-fe.jpg

UForge allows users to implement their own clients to interact with UForge.  UForge provides a RESTful API, allowing businesses to create a mashup and expose certain functionalities of UForge in their websites and portals.  UForge provides two SDKs:

	* Java
	* Python

Users can use other languages to communicate with UForge.

.. _repository-caching:

Repository Caching
------------------

UForge AppCenter uses a repository cache in which it stores OS repositories as new images are generated. This means that the cache is empty when the AppCenter is installed and will be populated as images are generated by users. The cache ensures that all the versions a user needs are always available to generate images. As users generate images, the AppCenter connects to the official repositories to get the repositories and stores them in the cache.

.. image:: /images/caching-1.png


Infrastructure Setup
--------------------

UForge can be installed either on physical machines or in a virtual or cloud environment.  The minimal installation requirements for UForge are:

	* One physical or virtual machine where UForge will be installed 
	* A NAS or SAN for storage 

UForge AppCenter Node Prerequisites
-----------------------------------

The UForge AppCenter components can be run on one physical or virtual machine, or can be distributed over several physical or virtual machines for scaling and reliability.

The UForge AppCenter requires the following hardware:

	* CPU: 64-bit, 8 or more cores
	* RAM: 16GB or more 
	* Local Hard Drive: 400GB
	* NAS/SAN Storage: 200 GB (though this might be much more depending upon the usage)

This is the minimum for an "all in one" solution. For more information, refer to :ref:`minimum-sw-topology`.
