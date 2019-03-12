.. Copyright 2016-2019 FUJITSU LIMITED

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

The UForge Setup Disk contains all the operating system information that needs to be copied to the UForge Repository. This repository can be shared storage or in the case where the entire UForge platform is being installed on one machine, can be on the local disk.  

If you want to have the UForge Repository setup on a local disk, you must first install UForge prior to setting up UForge Repository. Otherwise, if this is shared storage, the UForge Repository can be setup independently.

The UForge Repository must be setup properly prior to completing the final configuration step.  You must first populate the UForge database with the operating system package meta-data before you run the configuration phase described in :ref:`configure-uforge`.

You can set up the UForge Repository either:

	* on a shared storage. Refer to :ref:`repository-shared-storage`. This option is mandatory if you are installing UForge as a multi-node environment.
	* on a local storage. Refer to :ref:`repository-local-storage`. This option can only be used if you are installing UForge as a single node environment.
