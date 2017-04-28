.. Copyright 2017 FUJITSU LIMITED

Changelog
=========

3.7.fp4
-------

Release Date: 2017-05-02

New Features
~~~~~~~~~~~~
* New user dashboard providing usage statistics and quota information
* New option to scan a live machine without transfering any overlay information (allowing a light-weight audit of the instance)
* Support to create appliance templates based on Windows 2016 operating system
* Ability to scan and migrate Windows 2016 instances
* Application and services information now captured and displayed when scanning a Windows-based instance

Enhancements
~~~~~~~~~~~~
* Ability to export an appliance template in either YAML or JSON format (default now YAML)
* Enhanced the information displayed after registering machine images to a cloud environment.  machine ID and cloud location (region, zone etc depending upon the cloud target) now displayed in the UI

Bug Fixes
~~~~~~~~~

* 7553 A workload based on Scientific Linux cannot be scanned
* 7546 Scanning failed at Phase 6 (heap memory in eventcontroller to the even bus - message too large)
* 7534 Wrong values in /etc/fstab if the appliance has both partition '/' and partition '/boot'
* 7521 ``hammr template import`` fails for certain types of advanced partitioning tables
* 7500 K5 publication fails with message "Error creating publish command for K5"
* 7436 500 call fail when displaying the detailed information of a scan when i18n is Japanese
* 7403 Windows scan command displayed in the UI is wrong
* 7369 Error badly handled during appliance import if message contains "'"
* 7360 Oracle Linux 7 and Scientific Linux 7 machine images do not boot if the appliance templates has logical volumes
* 7340 Scanning a server with a file larger than 40 GB fails
* 7314 Cannot generate a machine image for Fujitsu K5 format from a scan
* 7229 Registering a machine image to AWS fails with Java ``PublishCommunicator`` error
* 7157 The scan binary ignores option ``-e "/"``
* 7153 Scan cannot treat files whose name includes ``>``
* 7147 Docker publish does not work anymore
* 7092 When launching Service Management Tool from ``run`` -> ``services.msc``, an error occurs
* 7071 The check box ``Ignore dependency checking warnings`` is displayed in the UI when a Windows image is created
* 7063 Inconsistent update of template revision
* 6960 Simultaneous scans of two ``CentOS 7.3`` machines fails
* 6932 When cloning an imported appliance and exporting, the wrong page is displayed
* 6748 Unable to download a generated machine image via the UI twice
* 5977 When resetting password, the information message to indicate that an email  has been sent is badly positioned 
* 5907 When inviting a collaborator to a workspace, email textbox is case insensitive
* 5074 Bad vertical aligned text in expandable button


3.7.fp3
-------

Release Date: 2017-03-21

New Features
~~~~~~~~~~~~

* Users can now import a Windows based scan, creating an appliance template.  This allows users to update the appliance template prior to migration. 
* Users can specify to run ``sysprep`` as part of a machine image generation for Windows-based appliances that have been imported from a Scan.  This allows users to provide a new administrator password as part of the install profile.
* Ability to trigger Repository updates manually via an API call.

Enhancements
~~~~~~~~~~~~

* The UI updated to display the language, type and edition of Windows OS profile
* The UI can be customized to allow hyperlinks in the footer or header to either open in a new tab (default) or in the same tab (replacing the UI).
* API Keys now have optional name and description meta-data to help the user identify what API keys are used for.

Bug Fixes
~~~~~~~~~

* 7146 Scan cannot treat files whose name includes ``>``
* 6995 The scan status is not updated to ``error`` when the error occurs during uploading
* 6993 A file or directory name whose include a line feed (LF) is not present in the scan result
* 7069 Upload a logo which is not ``png`` or ``jpg`` raise an error but erase the existing logo
* 7065 Incorrect warning message when appliance has multiple disks during generation of some formats
* 7061 Issue when adding PDF files as custom license to project (should not be allowed)
* 7035 ``rpmgen -e`` (exclude dir list) option is not working correctly
* 7074 MySoftware files are not copied on the filestystem when generating CentOS7 ISO images
* 7024 Windows scan of a machine with 2 disks, when user excludes 1 disk, UForge still creates 2 disks in the scan meta data
* 7067 ``uforge org category delete`` fails with two arguments
* 7029 Cannot create unformatted logical volumes
* 6939 My profile picture is not displayed on Activity Stream Workspace
* 7048 Search for packages does not take into account hour of the day
* 6873 Amazon publication - S3 bucket is not necessary anymore
* 7009 UForge root password can not be changed wrong message
* 7002 Spider do not cleanup all temporary dirs in /tmp
* 6948 Projects non-native files are ignored if my software has the same name.
* 7003 Windows generation is failing during OS check
* 6998 When exporting a linux appliance without OS Profile an internal servor error is raised
* 6986 After delete a custom license in MySofware or Project , the icon ``done.svg`` is still visible
* 6971 After K5 Black box migration, Firewall setting changes to enable in Cent OS 6.
* 6970 CentOS 6 scan and generation leads to an error
* 6884 Generation of AWS image for Windows Server 2012R2 fails with illegal seek exception
* 6834 After the migration from 3.5.1 to 3.6, created API keys no longer displayed in the UI
* 6964 Canceling the K5 publication finishes with ERROR message.
* 6961 Incoherence in template and mysoftware revisions when sharing to workspace
* 6963 Internal generation tools must generate the correct guestOS inside vmx when windows+vmware
* 6747 An image can be downloaded more than once by using the URL with same Download ID
* 6855 Cannot retrieve directory from remote site with http basic authentication in software library.
* 6794 Documentation mentions copyright in customisation but copyright is not displayed
* 6870 A generated CentOS 6.8 image kernel panics if it has a logical volume in the partitioning table
* 6815 Cannot pull files from FTP in MySoftware.
* 6875 When uploading a file for the second time the confirm popup has two handlers and so the action is carried out twice
* 6872 Success message for ``org os add`` is not correct
* 6800 Cannot download non-cached software artifact correctly if the remote file size has been changed.
* 6819 While scanning Windows OS, Scan progress is continued to copy on the clipboard.


3.7.fp2
-------

Release Date: 2017-02-13

New Features
~~~~~~~~~~~~

* Support registration of machine images for Azure ARM and Azure Enterprise Accounts
* Ability to register docker images built in UForge to DockerHub.  This includes managing credential information to authenticate against DockerHub.
* In ``Projects`` or ``My Software`` can now provide restrictions to determine if they are compatible with a particular OS family, type or version.

Enhancements
~~~~~~~~~~~~

* Renamed ``VM Builder`` Tab in the UI to ``Apps``.
* Better internal logging information when publishing/registering machine images to a target cloud environment.
* Better validation in the web service for information used in publishing/registering machine images.
* Better UX experience when managing and choosing ``pinned`` (or ``sticky``) packages.
* UI now displaying the size of the generated machine images.
* Can now delete an invitation of a user to a Workspace if a user has invited someone to join a collaboration workspace, and the person is not responding, there is no way to cancel the invitation.
* Added an ``Id`` column for all UForge CLI commands that lists information (for better referencing in other commands).
* Added the ability to reset a user's password via the UForge CLI (``--resetPassword`` option).


Compatibility Issues
~~~~~~~~~~~~~~~~~~~~

Migrating to UForge 3.7-2 will have the following compatibility issues:

* any Windows golden image that use a non-standard Edition (for example ``Windows K5`` instead of the official ``Standard``, ``Enterprise``, ``Webserver`` or ``Database``) will be changed to ``Standard`` edition. A warning will be added to the log files. If you would like to change the Edition of the golden image, you should re-register the golden image with ``org golden create`` command. 

.. warning:: Fujitsu is not legally responsible for any damage or loss caused by the possible inconsistency between the assumed and the actual Editions.

The following API interface and calls have been modified:

* The object ``DistribProfile`` is now an abstract object and is implemented by either :ref:`linuxProfile-object` or :ref:`windowsProfile-object` (which are new object types).
* The deprecated object ``DistribProfileTemplate`` has now been deleted.  The object :ref:`distribProfile-object` is now used.  The attribute ``standardProfileUri`` is now deprecated and been set to ``null``.

Due to the above object changes, the following API calls have been modified:

	* :ref:`orgOSWindows-add`
	* :ref:`orgOSWindows-delete`
	* :ref:`osTemplate-getAll`
	* :ref:`osTemplate-get`
	* :ref:`orgOSWindows-getAll`

The following API calls have been added to enhance scanned Windows-based workloads:

	* :ref:`workspaceTemplateOSApplications-get`
	* :ref:`workspaceTemplateOSServices-get`
	* :ref:`workspaceTemplateOSPartitionTable-get`


Bug Fixes
~~~~~~~~~

* 6853 While scanning Windows OS, Scan progress is continued to copy on the clipboard.
* 6821 Blob name must finish with ``.vhd`` and add some information in the publish popup.
* 6820 Issues in properties i18n file.
* 6809 OpenStack account turned into another type of cloud account after the migration from 3.5.1 to 3.6.
* 6706 Fix backward compatibility for golden edition with custom names.
* 5607 Even if the scan ends the UI continues to ask for information of the scan.
* 6737 Sub menu scrollable inside the Dashboard.
* 6734 Cannot delete template with software component from workspace.
* 6732 Unexpected scroll bar in My Software view.
* 6716 Cannot download rpms from yum repos whilst scanning a centos system.
* 6713 Error message containing typo for windows disk size.
* 6711 Golden location is retrieved from Pkgs table, it should be retrieved from WindowsProfile table.
* 6672 Scan does not read KEYBOARD in metadata.
* 6646 File conflicts against packages built with when installing centos distribution packages.
* 6639 Primary disk size is changed to the other disk size on UI when having multiple disks.
* 6627 Cannot export a template if the software component has rpm file in Repository Packages tab.
* 6614 Creating folder failed but displayed on UI.
* 6599 i18n properties breaking master build.
* 6596 Imported appliances from archive are not counted statistics in Dashboard.
* 6529 Image generation fails when a template includes rpm file with no cached.
* 6497 Can't display ``Projects`` as guest user.
* 6495 The ``org golden xxx`` command fails if edition name in db is not allowed.
* 6492 Badly formed error label for Credentials Microsoft Azure.
* 6480 Spelling mistake retrieving remote path and error message shown.
* 6478 Sharing a template in collaboration, including software that does not use the cache of the fetch, raises an Internal Server Error.
* 6460 Imported appliances are counted as created on statistics in Dashboard.


3.7.fp1
-------

Release Date: 2017-01-09

New Features
~~~~~~~~~~~~

* Multi-NIC support for Linux based appliance templates.
* Driver injection improvements (internal mechanism) for Windows-based appliance templates. 

Bug Fixes
~~~~~~~~~

* 6326 Impossible to publish an ``OpenStack VDI`` image
* 6323 Cloud account name appears twice in the public informations in UI for all Cloud formats
* 6234 Sticky package of imported template is not shown in the UI
* 6141 User gets a 500 call failed if a custom target platform has been added but not enabled specifically for the user
* 6042 OS packages are not sortable in the ``Repository`` column
* 6237 Spelling mistakes in the API docs
* 6222 Format enabling/disabling not working when updating the UI config
* 6453 Impossible to generate image when install profile contains users
* 6199 Migration fails because the user ID taken from a scan and user ID that the package makes overlap.
* 6409 OE-lite can't fetch QT source file
* 6206 Filter inactive pkgs on ``DistributionPackages.getAll()`` method
* 6200 Scanning a disabled OS is possible
* 6190 Scanning an azure vm with advance partitioning : install profile partioning not correct
* 6180 Errors outputted into ``/oar/oar_scan_job*.stderr`` when scanning CentOS 6
* 6154 Launching windows scan binary from command line with API key does not launch the scan
* 6134 Pkg overlay archive are built differently if a black box migration is done first or if it's a scan import to appliance
* 6309 Several concurrent generations could fail if there are uncached software bundles files in it
* 6211 Creating a two bootscripts with same name does not show an error message
* 6194 Japanese Characters are OK to use but encoded incorrectly for ``Tag`` and ``Maintainer`` fields of a software component
* 6193 Same rpm file can be uploaded without overwritten to a software component
* 6178 Errors outputted into ``/oar/job_finalize.log`` when generating CentOS image
* 6169 Total Disk Usage doesn't count the size of files uploaded to software components
* 6027 Exported template has lost some information on MySoftware
* 6346 WARP should skip to inject uforge agent in the specific condition
* 6327 Scripts are not imported when sharing a template in a ``Workspace``
* 6057 Yum update error ``uforge_update.sh: line 660: [: too many arguments``
* 6055 The volume shadow copy is not deleted after scan of Windows.
* 6007 Code in ``distrotools/lib/str.[c|h]`` in function ``repl_str()`` cannot compile for windows using ``mingw c++``
* 6440 Can't display ``Projects`` as guest user
* 6453 Impossible to generate image when install profile contains users


3.7
---

Release Date: 2016-12-27

New Features
~~~~~~~~~~~~
None (released based 3.6-fp2)

Bug Fixes
~~~~~~~~~

* 6537 Removed AMI format for AWS S3
* 6521 Launching windows scan binary from command line with API key does not launch the scan
* 6517 Impossible to know which publish image on UForge corresponds to which Image in K5 portal
* 6515 CentOS 6 images can be accessed with SSH on K5
* 6513 Validation for K5 publish view is not properly handled
* 6511 Launching uforge-scan.exe from command prompt still fails if the file path includes Japanese characters
* 6507 The ``uforge-install-config`` binary for windows does not start because ``uforge-install-profile-1-1.noarch.zip`` does not contain the correct directory structure.
* 6505 The ``no_console`` file is not created for Windows.
* 6504 Problem with OpenDJ port 4444 usage in several UForge config scripts
* 6503 The ``uforge.conf.ORIG`` contains plain passwords with very weak permission
* 6502 AWS connector uses a fixed size 3.4 GB disk and publication fails for larger images
* 6422 Uploading an avatar image twice, the first image is still used
* 6410 Loading page empty during 5 seconds for the first time in ``Sofware Library`` view
* 5897 If a space is used in cloud accounts in openstack in the URL, then an internal error is observed
* 5849 Displaying the logo in view package details of a target format is not displayed
* 6488 Impossible to generate image when install profile contains users
* 6362 AWS resource connector no longer work due to credential changes
* 6064 The CLI command ``org repo update`` returns exception if ``--type`` param value is invalid.
* 5900 Generation sometimes fails if the second disk of the appliance is too small


3.6.fp2
-------

Release Date: 2016-12-05

New Features
~~~~~~~~~~~~

* Fujitsu K5 support.  Can now register machine images generated on the platform to Fujitsu K5.

	.. note:: The following operating systems are supported for the moment (others will be supported soon):

		* CentOS 7.0
		* Ubuntu 14.04

* SELinux support when creating appliance templates and during migration
* Docker machine image generation support.  This allows users to build docker base images.
* When scanning Windows machines, the scan report now includes the services detected.

	.. note:: The platform does not support the comparison of windows-based scans at this time.

RFEs
~~~~

* Better progress status when scanning Windows machines
* Less restrictive validation of website information in the MySoftware/Project Overview
* New icons for 'pull' and 'upload' for software/project files management
* Added directory icon when displaying all the files for software/project files view
* When deleting a folder, the confirm message should be more explicit (that all sub folders and files will also be deleted)
* Better explanation of the "cached" option for software/project files in the UI
* Managing licenses for software/project components; there is now an explicit delet button to remove an uploaded license file 

Bug Fixes
~~~~~~~~~

* 6123 Publishing a generation from a scan results in 500 error in UI
* 6089 Member's role on workspace couldn't be changed if language is set as French or Japanese
* 6017 Canceling from Appliance Create no longer returns to previous page
* 5946 Publishing to CloudStack fails with the next error: vhd.gz: No such file or directory
* 5942 RHEL is added despite launching `org os add` for Oracle Linux or Scientific Linux with cli
* 5909 User ID and group ID of the install profile can be set 0
* 5906 UserResourcesAccessRights database mapping not proxied
* 5896 Deployment fails due to NIC settings
* 5892 Deployment fails when using eth1
* 5843 "org category delete" raises an error
* 5777 Launching uforge-scan.exe from command prompt fails with an error if the file path to the binary includes Japanese characters.
* 5762 Cannot register the third disk with a VirtualBox image
* 5756 New users, the defaukt country is: Abkhasia
* 5754 opening the Dashboard > Generations page first shows progress bar for all publications
* 5752 Number of MySoftware components not properly refreshed in the UI
* 5750 Number of Appliance not properly refreshed in the UI
* 5748 The diskusage of "uforge user quota list" is displayed by byte
* 5684 Invite the same user in the collaboration members list does not show error message
* 5676 Duplicated variable in /etc/default/grub if distribution provides default values.
* 5647 Keyboard and kernel parameters are not taken into the scan report on CentOS 7 scan.
* 5635 Broken incremental scan for windows 2012R2
* 5627 Cancelling scan via ctrl+c is not correctly displayed in the UI
* 5625 uforge-scan does not respect bandwidth limit
* 5623 When the image of CentOS7 is generated, RPM-GPG-KEY-CentOS import read fails
* 5621 rpmgen fails to build package if file path in %file includes space.
* 5570 Impossible to delete an incremental scan
* 5562 UForge CLI accesses to interactive mode even if the user or password are wrong
* 5560 The input value of the activation key is not saved in a Windows appliance
* 5342 Scan incremental with Ubuntu does not appear in UI
* 5265 No dialog box displayed after running an instance on Azure


3.6.fp1
-------

Release Date: 2016-10-31

New Features
~~~~~~~~~~~~

* Import/Export of appliance templates in the user interface
* Software (MySoftware) and Project bundles now consolidated.  New features added including:
	- pulling files from remote locations (HTTP, FTP endpoints) so the user no longer requires to upload software components to the platform
	- pulling files can be cached for future generations or pulled on each generation
	- file permissions added for files and directories
	- can create directory structures in a software bundle
	- can add tagging information to a software bundle
	- can add native packages from OS respositories to a software bundle
	- can add boot scripts to a software bundle
	- identify the software bundle only being supported on a subset of operating systems

* API keys can be used for authentication when running a scan for migration.
* Scan messages and error messages cleaned up and more understandable
* Japanese language localization for the UI


Bug Fixes
~~~~~~~~~

* 5293 Image generation error: Windows image must have at least 512 MB of memory
* 5729 Issues with migration from 3.5.1. to 3.6
* 5465 Build fails due to unreachable rpm-4.11.2.tar.bz2
* 5740 Fix DB schema checks
* 5331 AWS publish no longer works
* 5637 Windows generation from scan fails at boot
* 5427 Unable to generate a virtual machine with LVM inside a MSDOS disk
* 5291 All combo boxes are empty when a value has been selected
* 5876 Logo broken on Dashboard
* 5444 Unable to populate Fedora/RHEL distributions
* 5420 When a template is remobed from a workspace, a DELETE error appears in the log file
* 5527 Subscription info does not list the frequency of quotas
* 5494 Scan fails because of files of type c (character device file)
* 5483 The service command not found in a machine generated by UForge
* 5442 The file deletion of Project fails
* 5429 Root can disable root account in UForge CLI
* 5746 Timeout of 10 seconds for the UForge CLI is not usable
* 5563 Internal error in Migration tab
* 5558 500 Call Fail Error when generating an image from scan
* 5556 The targetformat of Amazon is not displayed when generating an image
* 5553 If a scan is deleted, the image generated from the same scan is not deleted
* 5551 Spelling mistake in UI when publishing to Flexiant
* 5549 The error of Keystone version is displayed in Keystone Server URL
* 5403 Scan fails when trying to rebuild a non repo package
