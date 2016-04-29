.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _install-overview:

UForge Installation Overview
============================

To install a fully functioning UForge platform, UShareSoft provides the following 2 ISOs:

	* ``UForge Setup ISO`` – this includes all the necessary elements to have a functioning "UForge in a Box"
	
	* ISO which contains the skeleton of the distribution installers in case you want to create ISO images with UForge. This only needs to be installed if you want to create ISO images.

.. _install-checklist:

Installation Checklist
----------------------

Before you start deploying UForge, ensure that you have all the following:

	* UForge Setup ISO
	* Your activation credentials (ID and activation key) provided by UShareSoft
	* Architecture of the deployment (number of nodes and networking topology. See :ref:`network-topology`)
	* The necessary system requirements (see :ref:`storage-sizing`)
	* Your SSL certificates, key and chaining certificates, and all files corresponding to the following entries in /etc/httpd/conf.d/ssl.conf:

		- SSLCertificateFile
		- SSLCertificateKeyFile
		- SSLCACertificateFile
		- SSLCertificateChainFile (might be empty)


Installation Steps
------------------

UForge installation has three distinct phases:

Step 1: Install the UForge AppCenter for each node of the platform.

Step 2: Configure UForge AppCenter using the UForge Deployment Wizard.

UForge is delivered in one of three forms:

	1. OVF (ESXi hypervisor) VM.  This contains all the UForge AppCenter binaries to allow you to provision UForge in VMware vCloud Director or equivalent.
	2. VHD VM (Xen hypervisor).   This contains all the UForge AppCenter binaries to allow you to provision UForge in Citrix CloudStack (XenServer-based deployments)
	3. ISO image.  This contains all the UForge AppCenter binaries to allow you to carry out a bare-metal installation or to install into a virtualized or cloud VM instance.

These images can be found in the ``UForge Setup ISO``.  Choose the image type most appropriate to the hardware, virtualized or cloud environment you will be deploying UForge to.

.. note:: The ``UForge Setup ISO`` allows you to set up partitioning on the deployment nodes.  This gives greater flexibility in sizing correctly the disks on each node depending on their role (for example, an application server node from a database node).

Step 3: Additional configuration steps, as described in :ref:`further-config-overview`.
