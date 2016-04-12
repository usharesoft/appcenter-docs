.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _install-overview:

UForge Installation Overview
============================

To install a fully functioning UForge platform, you must install and configure the UForge services as well as populate the UForge Repository with the operating systems you wish to build your server templates from.  To make the UForge installation process as easy as possible, UShareSoft provides an external hard drive ``UForge Setup Disk`` that contains:

	* UForge Operating System Repository – all the packages and updates for each open source operating system distribution supported by UForge. For other operating systems including RedHat Enterprise Linux, you must have access rights to the operating system repositories
	
	* Default Projects Catalog – all the 3rd party software that UShareSoft has packaged for its own Online platform Project Catalog

	* UForge Platform Installation Images – ISO image or VM images to install the UForge services

Installation Steps
------------------

UForge can be split into three distinct phases:

Step 1: Copy the operating system licences, logos, and ISO installers (that you wish to be supported in the UForge AppCenter) into the storage space that will be used as the UForge Repository.

Step 2: Install the UForge platform (either from the ISO or pre-created VMs) for each node comprising the platform.

Step 3: Configure UForge platform using the UForge Deployment Wizard.

UForge is delivered in one of three forms:

	1. OVF (ESXi hypervisor) VM.  This contains all the UForge platform binaries to allow you to provision UForge in VMware vCloud Director or equivalent.
	2. VHD VM (Xen hypervisor).   This contains all the UForge platform binaries to allow you to provision UForge in Citrix CloudStack (XenServer-based deployments)
	3. ISO image.  This contains all the UForge platform binaries to allow you to carry out a bare-metal installation or to install into a virtualized or cloud VM instance.

These images can be found in the UForge Setup Disk.  Choose the image type most appropriate to the hardware, virtualized or cloud environment you will be deploying UForge to.

.. note:: If you want to use partitioning on the deployment nodes, then use the ISO image.  This gives greater flexibility in sizing correctly the disks on each node depending on their role (for example, an application server node from a database node).


.. _install-checklist:

Installation Checklist
----------------------

Before you start deploying UForge, ensure that you have all the following:

	* UForge Setup Disk
	* Your activation credentials (ID and activation key) provided by UShareSoft
	* Architecture of the deployment (number of nodes and networking topology. See :ref: `network-topology`)
	* The necessary system requirements (see :ref: `storage-sizing`)
	* Your SSL certificates, key and chaining certificates, and all files corresponding to the following entries in /etc/httpd/conf.d/ssl.conf:

		- SSLCertificateFile
		- SSLCertificateKeyFile
		- SSLCACertificateFile
		- SSLCertificateChainFile (might be empty)
