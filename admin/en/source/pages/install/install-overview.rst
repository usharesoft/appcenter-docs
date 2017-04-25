.. Copyright 2017 FUJITSU LIMITED

.. _install-overview:

UForge Installation Overview
============================

To install a fully functioning UForge platform, we provide the following 2 ISOs:

	* UForge Setup ISO – this includes all the necessary elements to have a functioning "UForge in a Box"
	
	* ISO which contains the skeleton of the distribution installers in case you want to create ISO images with UForge. This only needs to be installed if you want to create ISO images.

.. _install-checklist:

Installation Checklist
----------------------

Before you start deploying UForge, ensure that you have all the following:

	* UForge Setup ISO
	* Your activation credentials (ID and activation key) provided by your vendor
	* Architecture of the deployment (number of nodes and networking topology. See :ref:`network-topology`)
	* The necessary system requirements (see :ref:`storage-sizing`)
	* Your SSL certificates, key and chaining certificates, and all files corresponding to the following entries in ``/etc/httpd/conf.d/ssl.conf``:

		- SSLCertificateFile
		- SSLCertificateKeyFile
		- SSLCACertificateFile
		- SSLCertificateChainFile (might be empty)

.. note:: Ideally, UForge should be setup with your machine connected to internet, in order to be able to complete all the configuration steps, namely accessing:

	* OS distribution repositories 
	* UForge Tools repository 
	* a YUM repository, in order to obtain all the UForge package when updating UForge.

	However, UForge can be setup and operated without Internet. A proxy server can be setup in order to obtain updated UForge packages.


Installation Steps
------------------

UForge installation has three distinct phases:

Step 1: Install the UForge AppCenter for each node of the platform.

Step 2: Configure UForge AppCenter using the UForge Deployment Wizard.

Step 3: Additional configuration steps, as described in :ref:`further-config-overview`.
