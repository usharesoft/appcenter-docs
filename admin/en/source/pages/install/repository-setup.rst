.. Copyright 2017 FUJITSU LIMITED

.. _repository-setup:

UForge Repository Setup
-----------------------

The UForge Repository is a storage area containing:

	* Operating system packages and updates
	* Project catalog binaries
	* User ``My Software`` binaries
	* Generated images from users using the platform
	* Data from user scans

The operating system and project binaries are separated from the ``My Software`` binaries and the images generated.  

.. warning:: When new projects are populated by the administrator after the initial install, they are copied in the same location as ``My Software`` and generated images.

The UForge Setup Disk contains all the operating system and default project binaries information that needs to be copied to the UForge Repository. This repository can be shared storage or in the case where the entire UForge platform is being installed on one machine, can be on the local disk.  

If you want to have the UForge Repository setup on a local disk, you must first install UForge prior to setting up UForge Repository. Otherwise, if this is shared storage, the UForge Repository can be setup independently.

The UForge Repository must be setup properly prior to completing the final configuration step.  You must first populate the UForge database with the operating system package meta-data before you run the configuration phase described in :ref:`configure-uforge`.

You can set up the UForge Repository either:

	* on a shared storage
	* on a local storage
