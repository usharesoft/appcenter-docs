.. Copyright 2017 FUJITSU LIMITED

.. _retrieve-data:

Retrieving Data from UForge
---------------------------

Before retrieving data from resellers.usharesoft.com using the lftp command from a UForge instance do the following:

	1. Verify if the UForge instance is running in a virtualized infrastructure with security rules by default (AWS, OpenStack, ...). Ports 20, 21 (as well as 22 for SSH) must be allowed for outgoing traffic.
	
	2. Due to the new proxy mechanism you must run::

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

The following is an example of a request sent to a UForge AppCenter with hostname 10.0.0.20 using cURL to get the user ``myUser``. Note that basic authentication is used for clarity.

.. code-block:: shell

	$ curl "http://10.0.0.20:9090/ufws/users/myUser" -H "Authorization: Basic myUser:password" -H "Accept: application/xml" -v | tidy -xml -indent -quiet

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
		...omitted for clarity
		</user>
