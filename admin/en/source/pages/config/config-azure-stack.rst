.. Copyright 2019 FUJITSU LIMITED

.. _config-azure-stack:

Additional Configuration for Azure Stack
-----------------------------------------

If Azure Stack is configured to use self-signed certificates, it is necessary to import Azure Stack's certificate into UForge server so it can be allowed access to Azure Stack.

To do this, follow the steps below:

	1. On Azure Stack's host, open the Certificate Manager (certmgr.msc)

	2. Go to ``Trusted Root Certification``, select ``AzureStackSelfSignedRootCert``, export the file as ``DER encoded binary X.509 (.CER)`` and copy it to the UForge server.

	3. To import the certificate to the UForge server, execute the following commands:

		.. code-block:: shell

			$ keytool -import -alias AzureStackSelfSignedRootCert -keystore /usr/java/jdk1.8.0_131/jre/lib/security/cacerts -file <certificate_path>
			Enter keystore password: changeit 
			Trust this certificate? [no]: yes 

	.. note:: Currently, UForge only supports the Azure Active Directory (Azure AD) authentication method.
