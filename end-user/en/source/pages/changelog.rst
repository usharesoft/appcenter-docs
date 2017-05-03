.. Copyright 2017 FUJITSU LIMITED

Changelog
=========

3.7-5
-----

Release Date: 2017-05-03

Installation
~~~~~~~~~~~~

To be able to update a 3.7 UForge using the latest yum repo, you have to edit ``/etc/yum.repos.d/uforge-ee-centos.repo`` and replace ``stable/3.7/official/centos/releases/$releasever/$basearch/`` by ``test/3.7/centos/releases/$releasever/$basearch/``

A compatible version of hammr is also available : 3.7-5

This version is only compatible with UForge AppCenter 3.7-5

To install it, you will have to launch the following command::

	$ pip install hammr==3.7-5


Enhancements
~~~~~~~~~~~~

* Ability to export an appliance template in either YAML or JSON format (default now YAML)

Bug Fixes
~~~~~~~~~

* 7634 Failed to delete together two or more artifact accounts with error
* 7658 spelling mistakes on the API doc
* 7404 Windows scan fail if is is executed according to portal
* 7522 hammr template import fails with "You can not have more than 4 partitions per disk. Disk sda has 6. Please modify your partition table." error
* 5680 Migrator Role does not allow create image, neither Cloud Accounts
* 7535 wrong values in /etc/fstab if the appliance has both partition '/' and partition '/boot'
* 6949 Windows generation error when disk too small does not raise an understandable error message
* 6871 either Oracle Linux 7 or Scientific Linux 7 image does not boot if it has logical volumes
* 6929 the timestamps of generation-failed images become UTC
* 7114 Modify upload timeout to avoid error during scan with big file
* 7180 uforge-scan.bin ignores option -e "/"
* 4020 option -e does NOT exclude some files/directory
* 7152 Scan cannot treat files whose name includes ">".
* 6801 Cannot download non-cached software using artifact accounts after the password is updated.
* 7093 generation failure with Debian 8 backports repo packages
* 6985 UriBuilder does not encode pipe in a certain chars order and results scan error.
* 6710 dependency checker ignores selected version of "Essential" packages in os profile and causes generation error.
* 5720 Error on generation update
* 6892 Debian dependency checker always ignores dependency error
* 7036 rpmgen -e (exclude dir list) option is not working
* 3131 images of a deactivated user should not be downloadable
* 6928 version&release should be used instead of builddate for checking dependencies
* 7075 mysoftware files are not copied on the filestystem when generating CentOS7 ISO images
* 6891 WARP must generate the correct guestOS inside vmx when windows+vmware
* 7038 Fail to generate Windows machineImage created from a VMDK format Golden Image
* 6943 A file or directory name whose include a line feed (LF) is not present in the scan result.
* 6681 Windows scan of a machine with 2 disks excluding 1 disk creates 2 disks in the meta data
* 6988 the scan status is not updated to "error" when the error occurs during uploading
* 6930 cannot create unformatted logical volumes
* 6839 Amazon publication - S3 bucket is not necessary anymore
* 7006 Check box "Ignore dependency checking warnings" is displayed when a  Windows image is created.
* 6982 Issue retrocompatibility with post update modif of AMI clean up
* 6633 UForge root password can not be changed wrong message
* 3193 Spider do not cleanup all temporary dirs in /tmp
* 6915 Projects non-native files are ignored if my software has the same name.
* 6901 Incorrect warning message when appliance have multidisk during generation of some formats
* 6990 Upload a logo which is not png or jpg raise an error but erase the existing logo
* 6945 "uforge org category delete" fails with two arguments
* 6972 After delete a custom license in MySofware or Project, the icon done.svg is still there beside the upload button
* 6624 issue when adding PDF as custom license to project
* 5994 My profile picture is not displayed on Activity Stream Workspace
* 6926 inconstent update of template revision

3.7-3
-----

Release Date: 2017-02-17

Installation
~~~~~~~~~~~~

To be able to update a 3.7 UForge using the latest yum repo, you have to edit ``/etc/yum.repos.d/uforge-ee-centos.repo`` and replace ``stable/3.7/official/centos/releases/$releasever/$basearch/`` by ``test/3.7/centos/releases/$releasever/$basearch/``

A compatible version of hammr is also available : 3.7-3

This version is only compatible with UForge AppCenter 3.7-3

To install it, you will have to launch the following command::

	$ pip install hammr==3.7-3


Bug Fixes
~~~~~~~~~

* 6924 Canceling the K5 publication finishes with ERROR message.
* 6920 Incoherence in template and mysoftware revisions when sharing to workspace
* 6899 Documentation mentions copyright in CSS customisation but copyright is not displayed
* 6896 Multiple simultaneous scans failed with Lock wait timeout exceeded in ushare-distrotools
* 6878 Success message for "org os add is not correct
* 6868 Cannot download software artifacts when file size exceed 2GB and file size has been changed
* 6867 Generation of AWS image for Windows Server 2012R2 fails with illegal seek exception
* 6851 When uploading a second time a file already uploaded in mysoftware files, the confirm popup has two handlers (so there is two webservice call)
* 6846 While scanning Windows OS, Scan progress is continued to copy on the clipboard
* 6833 After the migration from 3.5.1 to 3.6, created API keys disappeared
* 6817 Cannot retrieve directory from remote site with http basic authentication in software library
* 6802 A generated CentOS 6.8 image does not boot by kernel panic if it has a logical volume
* 6788 OpenStack account turned into another type of cloud account after migration from 3.5.1 to 3.6
* 6786 Cannot download rpms from yum repos whilst scanning a centos system
* 6776 CentOS 6 scan and generation leads to an error
* 6771 Credentials Microsoft Azure, the error label is "This should never happen, please update TemplateInfo"
* 6769 Creating folder failed but displayed on UI
* 6768 GUI i18n: Instruction on ""Artifact Accounts"" page is not translated
* 6766 GUI i18n: A Table Header in [SSH Keys] is not translated into Japanese
* 6762 Cannot delete template with software component from workspace
* 6745 The image cannot be downloaded with curl and wget
* 6705 An image can be downloaded more than once by using the URL with same Download ID
* 6665 When disk size allocated is not enough, the windows generation fails and there is no error raised in the UI
* 6662 rpm file in project which is tagged as NOT to install during generation is installed
* 6655 After K5 Black box migration, Firewall setting changes to enable in Cent OS 6
* 6647 File conflicts against packages built with when installing centos distribution packages
* 6628 Importing appliance with repository packages in bundle fails with "Import Error: Transfer in progress"
* 6610 Cannot download non-cached software artifact correctly if the remote file size has been changed
* 6609 Cannot pull files from FTP in MySoftware
* 6603 After import an appliance with archive file, the number of appliances is not updated
* 6556 Creating a user with allowed '@' character raises issues
* 6528 "org targetformat enable" does not show X in Access
* 6439 "SQL Error: 0, SQLState: null" occurs
* 6036 The logo of the Software component of a template imported from collaboration is broken
* 4251 User's scan count increases though the scan is cancelled if the user has unlimited scan quota

3.7-2
-----

Release Date: 2017-02-02

Installation
~~~~~~~~~~~~

To be able to update a 3.7 forge using the latest yum repo, you have to edit ``/etc/yum.repos.d/uforge-ee-centos.repo`` and replace ``stable/3.7/official/centos/releases/$releasever/$basearch/`` by ``test/3.7/centos/releases/$releasever/$basearch/``

Bug Fixes
~~~~~~~~~

* 6669 Cannot cancel the k5 publication
* 6434 Imported appliances are counted as created on statistics in Dashboard
* 6114 Sharing a template in collaboration, including software that does not use the cache of the fetch, raises an Internal Server Error
* 6476 Spelling mistake retrieving remote path and error message shown
* 6509 Several concurrent generations could fail if there are uncached software bundles files in it
* 6561 OS packages are not sortable by the Repository column
* 6563 Sticky package of imported template is not shown in UI at all
* 6564 Cloud account name appears twice in the public informations in UI for all Cloud formats
* 6565 Impossible to publish an OpenStack VDI image
* 6566 Creating two bootscripts with same name does not show an error message
* 6575 Pkg overlay archive are built differently if a black box migration is done first or if it's a scan import to appliance
* 6577 Exported template has lost some information on MySoftware
* 6579 Total Disk Usage doesn't count the size of files uploaded to software components
* 6582 Errors outputted into /oar/job_finalize.log when generating CentOS image
* 6584 Errors outputted into /oar/oar_scan_job*.stderr when scanning CentOS6
* 6597 Imported appliances from archive are not counted statistics in Dashboard
* 6604 Same rpm file can be uploaded without overwritten to a software component
* 6606 Filter inactive pkgs on DistributionPackages.getAll
* 6310 Primary disk size is changed to the other disk size on UI when having multiple disks
* 6435 "cached" option doesn't change when a file overwrites an existing pulled file
* 6442 Image generation fails when a template includes rpm file with no cached
* 6535 Cannot retrieve artifact from remote site using http basic authentication.
* 6543 Cannot export a template if the software component has rpm file in Repository Packages tab
* 6283 Launching an oarsub job where directory contains an '@' fails
* 6383 machineImage_Publish APIs return HTTP 500 Internal Server Error when the specified ID of the publishImage does not exist
* 6403 Scripts are not imported when sharing a template by Workspace
* 6417 Appliance import fails if MySoftware includes rpm packages
* 6533 Code in distrotools/lib/str.[c|h] in function repl_str() cannot compile for windows using mingw c++
* 6538 User can view all the distributions enabled in the ORG on Mysoftware>Distributions even if the user has only one Distribution enabled
* 6253 Keyboard is Arabic on UI after importing Ubuntu scan when keyboard is ``jp``
* 6380 User Update API call fails with "This user email is already in use"
* 6525 After import scan ubuntu information in InstallProfile are not correct (kernel param, license and firewall)
* 6530 Grub entries order are not conserved
* 6532 CLI command ``org golden create`` must have a ``--force`` to overwrite golden instead of showing an error
* 6534 Keyboard value is not imported correctly with white box migration
* 6536 Scanning a linux system with a filename including pipes ``|`` fails
* 6657 Scan does not read KEYBOARD in metadata
* 6658 Logs from SELinuxModeParser.java show KeyboardParser 



3.7
---

Release Date: 2017-01-31

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


3.6-fp2
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


3.6-fp1
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
