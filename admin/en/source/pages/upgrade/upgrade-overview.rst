.. Copyright 2017 FUJITSU LIMITED

.. _upgrade-overview:

Updating an Existing UForge Deployment
--------------------------------------

All the UForge components are delivered as native RPM packages. UShareSoft maintains a custom repository of the UForge platform. All updates are added to this repository. The update mechanism of a remote UForge platform uses the standard “yum” command-line package management utility.

.. image:: /images/uforge-update-repo.jpg

In order to interact with the UShareSoft package repository, you must already have an active UForge license (stored in UShareSoft's database) and corresponding authentication credentials, set during the initial install of the platform. The authentication credentials are stored in the uforge.conf file and used in the uforge-ee.repo file. To view these files:

.. code-block:: shell

	# vi /etc/UShareSoft/uforge/uforge.conf
	UFORGE_PRODUCT_ACCESS_USER=username
	UFORGE_PRODUCT_ACCESS_PASSWORD=password

.. note:: You should never update the following file: `# cat /etc/yum.repo.d/uforge-ee-repo`

The request to update uses these credentials via HTTPS to UShareSoft who then determines whether you have the access rights to update the platform.

You must also have set up the yum repo file to authorize UForge updates using configure_yum_repos.sh as follows:

.. code-block:: shell

	/opt/UShareSoft/uforge/conf/configure_yum_repos.sh -u <uss account user> -p <uss account password> -t <uforge install type>

The (optional) parameter <uforge install type> can take the values uforge-ee or uforge-dev. By default uforge-ee is used.

To update the platform, use the “yum” command-line tool as follows.

.. note:: Running ``yum update`` may also update OS packages from CentOS official repository. You should accept all the updates because UForge is qualified based on the lasest packages.

.. code-block:: shell

	# yum update 

	Loaded plugins: presto
	UForge-ee-uforge                                               |  951 B     00:00     
	UForge-ee-uforge/primary                                       | 1.9 kB     00:00     
	UForge-ee-uforge                                                                                           
	                                                                                   4/4
	UForge-ee-uforge-client                                        |  951 B     00:00     
	UForge-ee-uforge-client/primary                                | 1.0 kB     00:00     
	UForge-ee-uforge-client                                                                                       
	                                                                                   4/4
	fedora/metalink                                                     | 2.6 kB     00:00     
	fedora                                                              | 4.3 kB     00:00     
	fedora/primary_db                                                   |  13 MB     00:36     
	updates/metalink                                                    | 1.9 kB     00:00     
	updates                                                             | 4.7 kB     00:00     
	updates/primary_db                                                  | 6.4 MB     00:21     
	Setting up Update Process
	Resolving Dependencies
	--> Running transaction check
	---> Package MySQL-client.x86_64 0:5.5.23-1.linux2.6 set to be installed
	---> Package MySQL-server.x86_64 0:5.5.23-1.linux2.6 set to be installed
	---> Package MySQL-shared.x86_64 0:5.5.23-1.linux2.6 set to be installed
	---> Package glassfish.noarch 0:3.1-2 set to be updated
	---> Package perl-Compress-Raw-Zlib.x86_64 0:2.030-1.fc13 set to be updated
	---> Package perl-Test-Simple.noarch 0:0.94-1.fc13 set to be updated
	---> Package perl-parent.noarch 1:0.223-3.fc13 set to be updated
	---> Package perl-threads.x86_64 0:1.81-1.fc13 set to be updated
	---> Package uforge.noarch 0:3.2.5-0 set to be updated
	---> Package uforge-client.noarch 0:3.2.5-0 set to be updated
	--> Finished Dependency Resolution

	Dependencies Resolved
	=================================================================================================
	 Package                        Arch           Version              Repository             Size
	=================================================================================================
	Installing:
	 MySQL-client                   x86_64         5.5.23-1.linux2.6    UForge-ee-mysql        14 M
	     replacing  MySQL-client.x86_64 5.5.17-1.linux2.6
	 MySQL-server                   x86_64         5.5.23-1.linux2.6    UForge-ee-mysql        40 M
	     replacing  MySQL-server.x86_64 5.5.17-1.linux2.6
	 MySQL-shared                   x86_64         5.5.23-1.linux2.6    UForge-ee-mysql        1.7 M
	     replacing  MySQL-shared.x86_64 5.5.17-1.linux2.6
	Updating:
	 glassfish                      noarch         3.1-2                UForge-ee-glassfish    85 M
	 perl-Compress-Raw-Zlib         x86_64         2.030-1.fc13         updates                57 k
	 perl-Test-Simple               noarch         0.94-1.fc13          updates                116 k
	 perl-parent                    noarch         1:0.223-3.fc13       fedora                 13 k
	 perl-threads                   x86_64         1.81-1.fc13          updates                47 k
	 uforge                    noarch         3.2.5-0              UForge-ee-uforge  38 M

	Transaction Summary
	=================================================================================================
	Install       3 Package(s)
	Upgrade       7 Package(s)

	Total download size: 204 M
	Is this ok [y/N]: y

	<traces removed for readability>

	....

	Complete!

The RPM packages will be replaced and the services will be reconfigured to correctly update the platform.  If you have a multi-node UForge platform, then this command must be run on all the nodes. The updates should be run in the following order:

	1. database node
	2. compute node(s)
	3. web service and Portal nodes
	4. Run the following CLI command in order to know if Squid is running:

	.. code-block:: shell

		# service squid status
		squid is stopped
		// if squid is stopped, run the following command-line
		# service squid start	

.. _uforge-downgrade:

Going Back to a Previous Version of a UForge Deployment
-------------------------------------------------------

.. note:: Using ``yum downgrade`` to return to a previous version of UForge is not supported.

Even though the ``yum downgrade`` command works from a packaging perspective, it will not roll back possible changes done to the database (especially the database schema).

Moreover, there are additional factors that may lead to fatal errors, including configuration or properties files which are not considered by ``yum downgrade``, or possible changes of users and their permissions on the file system.

If you need to downgrade a UForge deployment to a previous version, you should create a snapshot of your machine prior to the upgrade.

Retrieving Data from UShareSoft
-------------------------------

Before retrieving data from resellers.usharesoft.com using the lftp command from a UForge instance verify the following:

	1. If the UForge instance is running in a virtualized infrastructure with security rules by default (AWS, OpenStack, ...). Ports 20, 21 (as well as 22 for SSH) must be allowed for outgoing traffic.
	
	2. Before launching the lftp command and due to the new proxy mechanism you must run::

		export ftp_proxy="" 

	This ensures that squid does not interfere with ftp transfer.

.. _send-request:

Sending a Request to UForge
---------------------------

As the UForge Web Services are RESTful, clients communicate via the standard HTTP(S) protocol. That means you can easily construct request URLs that will work on the command line and in your code.

All UForge requests (with some exceptions) require authentication information as part of the request. There are several ways to communicate with UForge:

	* Using API keys – A public and secret key is used to construct the URL.  This URL will contain public key and a signature that authenticates the request.
	* Basic Authentication – Where the login name and password are provided in the requesting HTTP(S) headers.
	* Custom – UForge provides AuthN and AuthZ modules that can be customized to provide other authentication mechanisms (refer to Customizing UForge Authentication for SSO).

All request URLs start with the hostname of where UForge is running, the port where UForge is listening for incoming requests, the service name and version number. This is known as the BASE URL. 

Even though UForge accepts HTTP requests, it is highly recommended for security reasons that HTTPS requests be used. HTTP requests should only be used for debugging purposes. Sensitive information will be exposed using HTTP.  

UForge expects certain headers containing authentication information to be present as part of the URL request. UForge also accepts other header information, for example, to specify response content type and caching.

The following is an example of a request sent to an UForge AppCenter with hostname 10.0.0.20 using cURL to get the user myUser. Note that basic authentication is used for clarity.

	.. code-block:: shell

		$ curl 'http://10.0.0.20:9090/ufws/users/myUser -H "Authorization: Basic myUser:password" -H "Accept: application/xml" -v | tidy -xml -indent -quiet

			* About to connect() to 10.0.0.20 port 8080 (#0)
			* Trying 10.0.0.20... connected
			* Connected to 10.0.0.20 (10.0.0.20) port 8080 (#0)
			> GET /ufws/users/myUser HTTP/1.1
			> User-Agent: curl/7.19.7 (universal-apple-darwin10.0) libcurl/7.19.7 OpenSSL/0.9.8r zlib/1.2.3
			> Host: 10.0.0.20:8080
			> Accept: application/xml
			>

			< HTTP/1.1 200 OK
			< X-Powered-By: Servlet/2.5
			< Server: Sun GlassFish Enterprise Server v3.1.2
			< Last-Modified: Thu, 08 Aug 2013 19:52:13 GMT
			< ETag: "80f76a81b033572861260548dd748bb3"
			< Content-Type: application/xml
			< Transfer-Encoding: chunked
			< Date: Thu, 21 Jul 2011 17:02:10 GMT
			<

			* Closing connection #0
			<?xml version="1.0" encoding="utf-8" standalone="yes"?>
			<user>
			...ommitted for clarity
			</user>
