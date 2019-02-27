.. Copyright 2016-2019 FUJITSU LIMITED

.. _self-signed-cert:

Allowing https Repositories with Self-Signed Certificate
--------------------------------------------------------

.. warning:: The use of self-signed certificate can create security risks.

The following command allows you to add self-signed certificates (exposed by your repositories) as trusted into the UForge server. 

	1. Download the SSL self-signed certificate from the server (repository) you want to populate using the following command:

	.. code-block:: shell

		$ echo -n | openssl s_client -connect localhost:443 | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > /tmp/cert.crt

	2. Recreate the CA file on your UForge platform (containing all trusted CA):

	.. code-block:: shell

		$ cp /tmp/cert.crt /etc/pki/ca-trust/source/anchors/
		$ update-ca-trust
		$ update-ca-trust enable

	3. Create a link to use the system java keystore instead of the jre default keystore::

		$ ln -s /etc/pki/java/cacerts /usr/java/latest/jre/lib/security/cacerts

	The default password is ``changeit``.
