.. Copyright 2017 FUJITSU LIMITED

.. _test-deployment:

Testing the Deployment
----------------------

Once the configuration phase is complete, you should carry out some basic sanity tests to ensure that the UForge AppCenter is running normally:

**Step 1:** Check if the web service is operational

Use the values in the ``uforge.conf`` to contact the web service and expect a ``200 OK`` response.

Get the values from the ``uforge.conf`` and add them to some environment variables (you could also manually view the uforge.conf)

.. code-block:: shell

	$ eval `grep '^UFORGE_WEBSVC_\|^UFORGE_GF_INTERNAL_IP\|^UFORGE_GF_HTTP_PORT\|^UFORGE_GF_WEBSVC_ROOT_CONTEXT' /etc/UShareSoft/uforge/uforge.conf`

Run a simple http request (using basic authentication) using curl

.. code-block:: shell

	$ curl http://$UFORGE_GF_INTERNAL_IP:$UFORGE_GF_HTTP_PORT/$UFORGE_GF_WEBSVC_ROOT_CONTEXT/users/$UFORGE_WEBSVC_LOGIN -H "Authorization:Basic $UFORGE_WEBSVC_LOGIN:$UFORGE_WEBSVC_PASSWORD" 
	--verbose

	* About to connect() to 10.0.0.240 port 9090 (#0)
	*   Trying 10.0.0.240... connected
	* Connected to 10.0.0.240 (10.0.0.240) port 9090 (#0)
	> GET /ufws-3.0/users/root HTTP/1.1
	> User-Agent: curl/7.20.1 (x86_64-redhat-linux-gnu) libcurl/7.20.1 NSS/3.12.8.0 zlib/1.2.3 libidn/1.16 libssh2/1.2.4
	> Host: 10.0.0.240:9090
	> Accept: */*
	> Authorization:Basic root:welcome
	> 
	< HTTP/1.1 200 OK
	< X-Powered-By: Servlet/3.0 JSP/2.2 (GlassFish Server Open Source Edition 3.1.1 Java/Sun Microsystems Inc./1.6)
	< Server: GlassFish Server Open Source Edition 3.1.1
	< Last-Modified: Thu, 03 May 2012 08:32:18 GMT
	< ETag: "ef286bf07b8d18928287e12cb122ccf2"
	< Content-Type: application/xml
	< Content-Length: 5477
	< Date: Thu, 03 May 2012 08:33:11 GMT
	...<rest of the body removed>

**Step 2:** Check to see if the database is running

The database service should be running and available on the port ``3306`` and the database table is present. The Percona Server instance should have ``usharedb`` and ``oar``

.. code-block:: shell

	$ service mysql status
	MySQL running (22661)                                      [  OK  ]

Get the values from the ``auth.conf`` and add them to some environment variables (you could also manually view the auth.conf)

.. code-block:: shell

	$ eval `grep '^UFORGE_DB' /etc/UShareSoft/auth.conf`
	$ echo "show databases" | mysql -f -N -u $UFORGE_DB_ADMIN_LOGIN -p$UFORGE_DB_ADMIN_PASSWORD -h db
	information_schema
	mysql
	oar
	performance_schema
	usharedb

**Step 3:** Check the generation cluster resources

Check that all the cluster resources are available ('alive').  On each compute node

.. code-block:: shell

	$ oarnodes | awk '/resource_id/ {n=$NF} /state : Suspected/ {printf "oarnodesetting -s Alive -r %s\n",n}' | sh

This should return without any output.
