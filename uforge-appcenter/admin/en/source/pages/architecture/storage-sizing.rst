.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _storage-sizing:

Storage Considerations
======================

The UForge platform requires a significant amount of storage.  During the configuration it is important to size the local storage, the various node instances of the deployment and, if any, the size of the shared remote storage.  You will need both a local and a remote file storage.

Local storage is used for installing the UForge service software and free disk space for log files. 

.. warning:: Logs for UShareSoft, Glassfish, OpenDJ, Tomcat, and syncope are stored under /opt and NOT under /var. Under /var/log you will find a symlink to the /var location where the logs are stored. Therefore you should allow enough space under /var for these logs.

The SQL Store uses the local storage to store all the database meta-data. Finally a compute node used to generate an image requires local free disk space to generate one or more images from an appliance template.

A remote storage system (NAS or SAN) is used to store:

	* Operating system repositories (this will be empty at the beginning and will grow as images are generated)
	* Project catalog package binaries
	* Binaries uploaded by users using UForge
	* Generated images (copied from a compute node once the generation is complete)

For small deployments, the remote storage system can be on a local filesystem of the generation cluster.

**Operating System Cache Repositories and Projects.**  The OS repositories are no longer stored in the UForge AppCenter. UForge AppCenter uses cache repositories in order to generate appliance templates.  Therefore its size will grow and is completely variable. What consumes space are the images generated and the binaries uploaded in MySoftware. You can limit the space used by setting user quotas.

The size of projects also vary, however are usually in the 10 to 100 MB range.  Consequently they take up a very small percentage of the entire disk space.

**Image Generation.**   Compute nodes require local storage to create the disk images during the generation phase of an appliance template. To calculate the local storage required by a compute node, the generation of an image needs to be understood. There are six phases to the generation of an image:

	* Phase 1: Check if the packages are in the cache. If they are not, download them and save to cache.
	* Phase 2: Create a virtual disk for package installation.
	* Phase 3: Install the packages, binaries and files to the disk (at this stage the local copy of the packages are deleted to save space).
	* Phase 4: Convert the disk to the required target format.
	* Phase 5: Compress the created disk.
	* Phase 6: Copy the image to a more permanent storage (the remote storage so that the image can be downloaded or published by the user).  At this stage the created disk is deleted.

At any given time during the construction of an image, the compute node requires three times as much space as the final image being generated.  Since a compute node can generate more than one image simultaneously, the local disk storage for a compute node can be calculated as follows:

	average image size x simultaneous generations x 3

Image sizes  vary from 300 MB to 12 GB.  Note this is the disk size required to install all binary packages.  A UForge compute node uses 'sparse' filesystem so that 'free' disk space required by a virtual machine does not need to be allocated during the generation of that virtual machine.

For a compute node configured to generate 10 images simultaneously and assuming that an average image size is 8 GB, the minimum local storage required by a compute node is:

	8 x 10 x 3 = 240 GB

**User Disk Space.**  Each user on UForge can generate images and also upload their own software.  The user software is stored on the remote storage.  Once an image has been generated it is also stored on remote storage allowing the user to download or publish the image directly to a virtual or cloud platform at a later stage.  User uploaded software is usually a small percentage of the disk space compared to generated images. Note, that as the user has the appliance template, an image can be regenerated at any time, therefore, images can be deleted  to save disk space. The total disk space required to store uploaded software and user images can be calculated as follows:

	user disk quota x total number of users

For example, a UForge platform providing all the operating systems UForge supports for 100 users, each having a quota of 18 GB (equivalent to having a maximum of 15 stored images of 1GB each and 3GB of uploaded software), the remote storage required is: 1880 GB (1.88 TB).

Depending on the replication policy used for the remote storage, the total remote storage may have to be larger.  Note that it may not be necessary to replicate all the information stored in the remote storage.  Only important information must be replicated, including:

	* the uploaded user software
	* operating system repositories (this may be optional if there are backups of the operating systems elsewhere.)

Images generated are usually not replicated, as the image can be regenerated from the appliance template stored in the SQL Store.