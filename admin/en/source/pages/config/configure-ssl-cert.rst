.. Copyright 2019 FUJITSU LIMITED

.. _config-ssl-cert:

Configuring Apache and Tomcat Web Services to use SSL Certificate
-----------------------------------------------------------------

It is highly recommended that all communication with UForge is done via HTTPS.  After the initial installation of UForge, neither the HTTP server (Apache) nor the application server (Tomcat) have yet been configured to use a SSL certificate and allow HTTPS.

To configure both servers to use an SSL certificate:

	1. Log in as root to the machine running the UForge Apache and Tomcat Web Services.

	2. Copy the SSL certificate files locally to the machine.  Note that you should have three or four files, for example: 

		* SSLCertificateFile: server.crt.pem
		* SSLCertificateKeyFile: server.key.pem
		* SSLCACertificateFile: CA.crt.pem
		* SSLCertificateChainFile: intermediate.CA.crt.pem (this one is optional)
	
		You need to build a self contained certificate as follows:

		.. code-block:: shell

			$ cat server.crt.pem CA.crt.pem > server_CA_chain.crt.pem

		or: 

		.. code-block:: shell

			$ cat server.crt.pem intermediate.CA.crt.pem CA.crt.pem > server_CA_chain.crt.pem

		Note that ``.pem`` files contain the following type of data for certificate files:

		.. code-block:: shell

			$ cat server.crt.pem
			-----BEGIN CERTIFICATE----- 
			MIIHJTCCBg2gAwIBAgIDB25YMA0GCSqGSIb3DQEBBQUAMIGMMQswCQYDVQQGEwJJ 
			...
			aW9uIEF1dGhvcml0eTADAgECGmRMaWFiaWxpdHkgYW5kIHdhcnJhbnRpZXMgYXJl
			V4XfZvZtrRcZ 
			-----END CERTIFICATE-----

		And the following data for the key file:

		.. code-block:: shell

			$ cat server.key.pem
			-----BEGIN PRIVATE KEY----- 
			MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQDaRIAE7wrKbS9T 
			...
			GdIr+qaNjk+eZLVsuPsAvwPlsWI/Cip7Zqygtvviteyen0VZbLpRJgbbjXqh9GwP 
			G33VnWF89pfm5FNRu3WHIf8Ukw== 
			-----END PRIVATE KEY----- 

		If this is not the case, refer to the OpenSSL documentation on how to convert certificate and key files from one format to another.

	3. Put the following entries in ``/etc/httpd/conf.d/ssl.conf``:

		* SSLCertificateFile ``/etc/pki/tls/certs/server.crt.pem``
		* SSLCertificateKeyFile ``/etc/pki/tls/private/server.key.pem`` 
		* SSLCertificateChainFile ``/etc/pki/tls/certs/intermediate.CA.crt.pem`` 
		* SSLCACertificateFile ``/etc/pki/tls/certs/CA.crt.pem``

	4. Verify the permissions and ownerships of these files

		.. code-block:: shell

			$ ll -d /etc/pki/tls/certs/server.crt.pem /etc/pki/tls/private/localhost.key /etc/pki/tls/private/ /etc/pki/tls/certs/ 
			drwxr-xr-x. 2 root root 4096 Sep 25 12:05 /etc/pki/tls/certs/ 
			-rw-------. 1 root root 1188 Sep 25 12:05 /etc/pki/tls/certs/server.crt.pem 
			drwxr-xr-x. 2 root root 4096 Sep 25 12:05 /etc/pki/tls/private/ 
			-rw-------. 1 root root  887 Sep 25 12:05 /etc/pki/tls/private/server.key.pem 

	5. (Re)start the httpd server:

		.. code-block:: shell

			$ service httpd restart

	If the server does not start, this may be because of a bad certificate, key or CA certificate file. In this case, check the appropriate logs in ``/var/log/httpd``.

	6. Verify the validity of the certificates:

		.. code-block:: shell

			$ openssl s_client -connect localhost:443
			...
		    	Verify return code: 0 (ok) 
			---
			Ctrl-C or Ctrl-D to leave openssl client

		If there is a problem with the certificate you might get outputs like:

		.. code-block:: shell

			$ openssl s_client -connect localhost:443
			...
		    	Verify return code: 18 (self signed certificate) 
			---

		or

		.. code-block:: shell

			$ openssl s_client -connect localhost:443
			...
		    	Verify return code: 21 (unable to verify the first certificate) 
			---

	7. Verify the certificate:

		.. code-block:: shell

			$ openssl s_client -showcerts -connect <ip-of-the-uforge-web-service-machine>:<port>

	Or you can also use same openssl client command used for the Apache server in step 6.

	To verify that the new certificate is correct and if the Tomcat service is accessible from the outside, go to `http://www.digicert.com/help/ <http://www.digicert.com/help/>`_ and type the public name or IP address of your web service. 

	Note that there is no way to specify another port than HTTPS (443) on this page therefore you might need to add an iptables redirection rule like:

	.. code-block:: shell 

		$ iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 443 -j REDIRECT--to-port 9191
