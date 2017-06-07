.. Copyright 2017 FUJITSU LIMITED

.. _windows-uforge:

Microsoft Windows and UForge
============================

.. warning:: UForge user must acquire Windows licenses in order to handle Windows OSes in UForge. When publishing Windows OS image or scanning Windows server, you have to confirm usage conditions of cloud provider and virtualization software which you publish to or scan.

Within UForge, Microsoft Windows is treated differently from other Linux/UNIX operating systems. In fact, Windows is not bundled with packages. Consequently, it is not possible to create standard (package based) OS Profile as for all the other supported distributions.

Instead, UForge uses a Golden Image as a profile. A Golden Image is an image that has been created by the customer (see :ref:`create-golden-image`) that contains the basic installation of the Windows version and some extra files. You can generate Golden Images at any time.

A Golden Image can be between 5 to 10 Gb, depending on the selected version.

You will need Golden Images to create Windows appliance templates. If you want to incorporate a Windows update, then you need to create a new set of Golden Images. You can create Golden Images yourself using two different methods:

	* scan a Windows machine and import it to UForge as a Golden Image (:ref:`scan-to-golden`)
	* create the Golden Image manually and install it on UForge (:ref:`create-golden-image`)

Within UForge, the Golden Image used when you create appliances will be the last Golden Image created. In future releases, the different Golden Images will appear as Milestones. 

.. _windows-versions:

Supported Microsoft Windows Versions
------------------------------------

UForge supports Microsoft Windows Server 2008 R2 (this distribution is only 64 bits), 2012, 2012R2, and 2016.

Microsoft delivers 4 versions: 

	* DataCenter
	* Standard
	* WebServer 
	* Enterprise

For each version, there is a Full release and a Core release (without a Desktop).

These versions are available in French, English and Japanese. Unfortunately, one version of Microsoft Windows can NOT support multiple languages.

Restrictions
------------

The following UForge features are not supported with appliances based on Microsoft Windows: 

	* Package selection at the OS level (however, users can add software via MySoftware or Projects)
	* Windows migration possible as blackbox only
	* Windows ISO format not supported

Using Microsoft Windows Key Mechanism
-------------------------------------

Microsoft Windows Operating System requires a key validation. UForge generates images without a key in it. Users have 30 days to enter their key once the Appliance is booted.

.. _first-windows-install:

First Installation of Microsoft Windows
---------------------------------------

To install Microsoft Windows, follow the instructions below. This example is for Microsoft Windows Server 2008R2. If you want to install for Microsoft Windows Server 2012, 2012R2 or 2016, replace the string ``Server2008R2`` with the version you want to install in all commands below. 

	1.  First population of Windows::

		$ uforge org os add --name Windows --arch x86_64 --version Server2008R2

	2.  Activate Windows Server2008R2 inside the UForge organization::

		$ uforge org os enable --name Windows --arch x86_64 --version Server2008R2

	3.  Activate Windows Server2008R2 for root user (and potentially other preexisting users)::

		$ uforge user os enable --name Windows --arch x86_64 --version Server2008R2 --account root
		$ uforge user os enable --name Windows --arch x86_64 --version Server2008R2 --account <OTHER_USER_NAME>

.. note:: UForge does not manage Windows updates as it does for Linux. Each time you want to have an update for Windows, you will need to create and install a new set of Golden Images.

Listing Existing Golden Images
------------------------------

In order to view a list of existing golden images installed on your UForge run::

	$ uforge org golden list --arch x86_64 --version Server2008R2 
