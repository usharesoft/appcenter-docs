.. Copyright 2017 FUJITSU LIMITED

.. _configure-uforge:

Configuring UForge
------------------

Once the installation is complete on all the nodes you wish to use for the UForge AppCenter, you are now ready to configure all the UForge AppCenter services.  This is done via the UForge Deployment Wizard that helps guide you through the final steps of the installation process.

To launch the UForge Deployment Wizard, use your browser and go to one of the nodes that have been installed:

	http://<ip address of the node>:9998/deployments

.. note:: The deployment wizard is still using Flex technology, therefore you will require to have flash player installed on your browser.  Steps are being taken to remove this dependency in future versions of the product.

Fill in the wizard, note that all the fields are mandatory.

	1. Enter the Organization name. This is the name of the default Organization.  The organization groups all the operating systems, formats and users for the platform. 

	2. Enter an email address.  This is the email address of the root administrator of UForge.  All administration email notifications are sent to this email address.

	3. Set the root administrator's password. The password must be at least five characters long, including alphanumeric characters and the following special characters ``!#$%&'()*+,-/:;<=>?@[\]/^_{|}~```. Spaces are not allowed at the beginning or end.

	4. Provide a username, email and password for an initial user account to be created.  This user account will have administration access rights for the default Organization.

	5. Provide the UForge activation key and credential information to be able to receive UForge updates.  If you do not have this information, please contact your vendor.

	6. Select the operating systems and formats you would like to install. When you select an OS, a default mirror location is indicated. This is used for synchronization of packages and distributions.  You can either accept the default values or modify the value to synchronize with another mirror.

	7. Set the internet connection. By default, UForge expects to have a direct connection to the internet. If you de-select this option, you will need to enter the proxy hostname and port.

	8. Set the SMTP Server to use for sending email notification messages created by UForge.  If you want to use a SMTP relay, then also indicate the relay hostname and port number.

	9. Click ``next`` to continue.

	10. Enter the Web Server IP address, external hostname and the database IP address.

		.. note:: The external hostname is used to construct two external URL endpoints.  The first as the external URL endpoint of the user interface, and the other for REST API calls and command-line usage.  The external hostname should normally be a fully qualified hostname.  For example, if the external hostname is uf.example.com, then the following URL endpoints are created:

			* User interface URL endpoint: https://uf.example.com/uforge
			* Command-line URL endpoint: https://uf.example.com/apis

			These external URL endpoints can be changed after the initial configuration is complete, refer to :ref:`modify-external-endpoints` for more information.


	11. Select if OS and image storage should be local or remote. OS storage will be used for distributions, which image storage will include user data such as images, projects, mysoftware and other user data created with UForgeNow.

		* If you choose to use a remote storage, indicate the NFS server with mount point and you should enter the full path for the OS directory e.g. ``/DISTROS``.
		* If you select remote storage for the image store, you have to make sure that the path ``USER_DATA`` exists, with the correct permissions i.e. tomcat:tomcat. Refer to :ref:`repository-shared-storage`, step 4, Check mount points, for more details.

	12. Indicate the generation cluster compute node hostnames. You can add additional compute nodes by clicking the add button.

	13. Once you have finished the configuration, click the ``Deploy`` button.

		.. note:: The deployment may take a few hours, depending on the number of operating systems you have chosen.

	14. Once the deployment is complete, click ``Finish``. 

.. warning:: As part of the deployment phase, the wizard logs all the steps of the configuration.  These logs though include the administration passwords and other sensitive data you have used to configure this platform.  It is important that these logs do not remain on the machine once the deployment is over.  To do this:

	.. code-block:: bash

		$ cd /var/log/UShareSoft
		$ /bin/rm -rf oas-deploy
		

Configuring Ports
~~~~~~~~~~~~~~~~~

The following ports need to be configured for your UForge AppCenter.

For outgoing:

	* 20 and 21
	* 22 for SSH
	* 443 and 80

For incoming:

	* 80 and 443
	* 22

In addition, communication ports between UForge and the cloud platform to which you will publish the images have to be open and depend entirely on your cloud platform configuration, see :ref:`cloud-platform-default-ports` for more information.

Configuring NTP
~~~~~~~~~~~~~~~

Some cloud platforms will reject uploading machine images, if the HTTP request date is in the future of the target cloud platform.  To ensure proper function of UForge, please edit 'server' directives in ``/etc/ntp.conf`` if UForge servers cannot connect to NTP servers on the internet.

.. warning:: If you wish to contact NTP servers on the internet, then port 123 (UDP) should be opened on your firewall.

