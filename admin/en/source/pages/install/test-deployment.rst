.. Copyright 2017 FUJITSU LIMITED

.. _test-deployment:

Testing the Deployment
----------------------

Once the configuration phase is complete, you may wish to carry out some basic sanity tests to ensure that the UForge AppCenter is running normally:

**Step 1:** Check if the web service is operational

Use the values in the uforge.conf to contact the web service and expect a ``200 OK`` response.

Get the values from the uforge.conf and add them to some environment variables (you could also just manually view the uforge.conf)

.. code-block:: shell

	$ eval `grep '^UFORGE_WEBSVC_\|^UFORGE_GF_INTERNAL_IP\|^UFORGE_GF_HTTP_PORT\|^UFORGE_GF_WEBSVC_ROOT_CONTEXT' /etc/UShareSoft/uforge/uforge.conf`

Run a simple http request (using basic authentication) using curl

.. code-block:: shell

	$ curl http://$UFORGE_GF_INTERNAL_IP:$UFORGE_GF_HTTP_PORT/$UFORGE_GF_WEBSVC_ROOT_CONTEXT/users/$UFORGE_WEBSVC_LOGIN -H "Authorization:Basic $UFORGE_WEBSVC_LOGIN:$UFORGE_WEBSVC_PASSWORD" 
	--verbose

	*   Trying 10.0.0.207...
	* Connected to 10.0.0.207 (10.0.0.207) port 8080 (#0)
	> GET /ufws/users/root HTTP/1.1
	> Host: 10.0.0.207:8080
	> User-Agent: curl/7.43.0
	> Accept: */*
	> Authorization:Basic root:welcome
	>
	< HTTP/1.1 200 OK
	< Set-Cookie: JSESSIONID=77B407785AFC8F8FAE5120625F986F68; Path=/ufws/; HttpOnly
	< Last-Modified: Wed, 30 Aug 2017 10:05:33 GMT
	< ETag: "75cf28ed12f40a5c09b31bfe0dd2121d"
	< Content-Language: en
	< version: <UForge version>
	< Content-Type: application/xml
	< Transfer-Encoding: chunked
	< Date: Wed, 30 Aug 2017 10:08:10 GMT
	< Server: Apache
	...<rest of the body removed>

**Step 2:** Check to see if the database is running

The database service should be running and available on the port ``3306`` and that the database table is present. The Percona Server instance should have ``usharedb`` and ``oar``

.. code-block:: shell

	$ service mysql status
	MySQL running (22661)                                      [  OK  ]

Get the values from the auth.conf and add them to some environment variables (you could also just manually view the auth.conf)

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
