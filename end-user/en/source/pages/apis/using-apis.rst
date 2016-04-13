.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _apis-rest-interface:

Using the REST API
==================

UForge API is a RESTful resource.

The UForge API follows the design principles of Representational State Transfer (REST). UForge platform provides a set of resources (the API), each of which is referenced with a global identifier (URI). In order to manipulate these resources, clients communicate via the standard HTTP(S) protocol and exchange representations of these resources in a specific format. The documentation notes which formats are available for each method. The API presently supports XML and JSON. To get the results in the format of your choice, the ``Accept-Type`` header attribute is used in the request.

To make the UForge API even easier to use, UShareSoft has created a Java SDK and Python SDK.  You can create the API for other languages.

Communication with UForge is done via HTTP(S). For security reasons it is recommended to use HTTPS, however you may submit HTTP requests for debugging purposes. 

* GET requests retrieve data 
* POST requests create data
* PUT requests modify existing data
* DELETE request destroy existing data

API methods that require a particular HTTP method will return an error if you do not make your request with the correct one. All HTTP methods return codified response codes.


Response & Error Codes
----------------------

The UForge API returns typical HTTP status codes for every request received. HTTP status codes in the 200 range mean that the request was successful, while the  400 and 500 range indicates an error. The status codes in the 300 range are reserved for redirection.

Some of the error codes are returned by the web server container, while all the other response codes are returned by the UForge REST web service. Errors returned by the UForge REST web service may include a more detailed error message indicating why the request failed.

.. image:: /images/uforge-error-response.jpg


Success Codes
~~~~~~~~~~~~~

The following codes indicate a successful connection. The response may also include a body section providing the requested information. This information is in a MIME format specified as acceptable in the request.

* ``200 OK``: Success. The request was fulfilled.
* ``201 Created``: Following a POST command, a new resource has been created. The new resource URI is included in the response.
* ``204 No Response``: Server has received the request but there is no information to send back. This is usually the case in a DELETE command, where a resource has been deleted
* ``304 Not Modified``: Used when a client does a Conditional GET Request. If the document has not been modified since the date and time specified in If-Modified-Since field, the server responds with a 304 status code and does not send the document body to the client. The purpose of this feature is to allow efficient updates of local cache information (including relevant meta-information) without requiring the overhead of multiple HTTP requests (e.g. a HEAD followed by a GET) and minimizing the transmition of information already known by the requesting client (usually a caching proxy).

Error Codes
~~~~~~~~~~~
The 4xx codes are intended for cases where the client seems to have erred, and the 5xx codes for the cases where the server identifies that the server has erred. It is impossible to distinguish these cases in general, so the difference is only informational. The UForge platform will attempt to provide a detailed error message to help the client diagnose the problem.

* ``400 Bad Request``: The request has bad syntax or was inherently impossible to satisfy.
* ``401 Unauthorized``: The request did not provide an acceptable authorization parameter. The client should retry the request with a suitable Authorization header.
* ``403 Forbidden``: The client does not have the privileges to access this resource. Authorization will not help.
* ``404 Not found``: The server did not find anything matching the resource provided in the request.
* ``409 Conflict``: Following a POST command, if the resource being created already exists.
* ``415 Unsupported Media Type``: The server refuses to service the request because the entity of the request is in a format not supported by the requested resource for the requested method.
* ``500 Internal Error``: The server encountered an unexpected condition which prevented it from fulfilling the request.
* ``502 Bad Gateway``: UForge is down or being upgraded.
* ``503 Service Unavailable``: UForge is overloaded with requests. Try again later.

Sending a Request
-----------------

The UForge Platform Services are all RESTful services, where clients communicate via the standard HTTP(S) protocol. That means you can easily construct request URLs that will work on the command line and in your code.

All UForge requests (with some exceptions) require authentication information as part of the request.

The UForge REST API uses a public and secret API key pair for authenticating each request. The public key is inserted as a query in the request URI. The secret key is then used to encode the entire URI to create a signature using HMAC_SHA1. This signature is then added to the end of the request URI.

Note that you can use Basic Authentication by adding an extra HTTP header ``Authorization:Basic username:password``. However, this is less secure. We recommend this only be used on local area networks for instance.


All request URLs start with the hostname of where UForge is running, the port where UForge is listening for incoming requests, the service name and version number. This is known as the BASE URL. Such request URLs resemble the following sample::

	https://myuforge.example.com:443/ufws-3.3

Even though UForge accepts HTTP requests, it is highly recommended for security reasons that HTTPS requests be used. HTTP requests should only be used for debugging purposes. Sensitive information will be exposed using HTTP.

The Request Headers
~~~~~~~~~~~~~~~~~~~

UForge expects certain headers containing authentication information to be present as part of the URL request. UForge also accepts other header information, for example, to specify response content type and caching.

Request Example
~~~~~~~~~~~~~~~

The following is an example of a request sent to an UForge platform with hostname ``10.0.0.20`` `using cURL
<http://curl.haxx.se/docs/manpage.html>`_ to get the user ``myUser``. Note that the response body (the user information) has been ommitted here for clarity::

	$ curl 'http://10.0.0.20:9090/ufws-3.3/users/myUser?apiKey=XX8Bs2prKPdFrKH_i4rsW7WR0f4FQ05IO7A8vuQUoNDino-7513mmEDecIAzpeMwWXZvnyZ6W0bJTKBwwc&signature=3qD1oxLwOI321BJ1pDZ6Dzmqbac%3D' -H "Accept: application/xml" -v

	* About to connect() to 10.0.0.20 port 9090 (#0)
	* Trying 10.0.0.20... connected
	* Connected to 10.0.0.20 (10.0.0.20) port 9090 (#0)
	> GET /ufws-3.3/users/myUser HTTP/1.1
	> User-Agent: curl/7.19.7 (universal-apple-darwin10.0) libcurl/7.19.7 OpenSSL/0.9.8r zlib/1.2.3
	> Host: 10.0.0.20:9090
	> Accept: application/xml
	>

	< HTTP/1.1 200 OK
	< X-Powered-By: Servlet/2.5
	< Server: Sun GlassFish Enterprise Server v2.1.1
	< Last-Modified: Thu, 21 Jul 2011 09:43:29 GMT
	< ETag: "80f76a81b033572861260548dd748bb3"
	< Content-Type: application/xml
	< Transfer-Encoding: chunked
	< Date: Thu, 21 Jul 2011 17:02:10 GMT
	<

The example illustrates the following:

* a ``GET`` request is sent (cURL by default uses GET) on the resource: ``/ufws-3.0/users/myUser``
* an API key is used in this case for authorization
* the ``Accept header`` is being used to request that the response be sent in XML. Note that, if this header is omitted, UForge sends the response in XML by default.
* the response header includes ``ETag`` and ``Last-Modified`` allowing cache validation and a conditional GET requests.


Using Basic Authorization
-------------------------

// TODO



Using the API Keys
------------------

To use the UForge AppCenter APIs, it is recommended to use a public and secret API key as part of the request. This allows UForge AppCenter to correctly authenticate and authorize the request. API key pairs are managed from the "My Accounts" > "API Keys" tab.  If you cannot see this tab, then you do not have the right to access UForge via the APIs. Contact your administrator for an initial API key pair.

The API keys are used inside and to sign each request URI to the UForge platform. The creation of a properly signed request URI is done in 5 steps:

1. Add the public API key to the end of the request URI with the query parameter ``apiKey``.
2. Encrypt the request URI using ``HMAC_SHA1`` with your secret API key to create a signature string.
3. Encode the signature string using ``Base64``.
4. URL encode the signature string.
5. Add the signature to the end of the request URI created in step 1 with the query parameter ``signature``.

.. image :: /images/uforge-api-request-process.png


Query Paramaters
----------------

Certain resources within the UForge AppCenter API allow query parameters (or query strings) as part of the request URI. This allows you to pass extra parameters during search requests or to restrict the response data.

To pass a query parameter in a URL, the question mark symbol (?) is used as a seperator. For example::

	http://server/uripath?query_string

The query string is composed of one or more field-value pairs, each seperated by the equals symbol (=). The series of field pairs is seperated by the ampersand symbol (&). For example::

	http://server/uripath?field1=value1&field2=value2&field3=value3







