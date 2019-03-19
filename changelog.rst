.. Copyright 2017-2019 FUJITSU LIMITED

Changelog
=========

3.8.fp11
--------

Release Date: 2019-03-18

New Features
~~~~~~~~~~~~
* Develop and test your software applications faster. Thanks to the new local docker registry installed with UForge, you can docker run your containers directly.

       .. note:: Previously generated Docker based images will no longer be downloadable. You must regenerate them to use this feature.

Enhancements
~~~~~~~~~~~~
* Blueprint deployment has been improved. The user can now generate and publish all images of the blueprint appliances by clicking on the new ``prepare`` button.
* Blueprint Composer now raises a warning if one of the appliance component configuration requires user interaction at first boot
* UForge provides a PowerShell command to download uforge-scan.exe from a Windows Server

Bug Fixes
~~~~~~~~~
* 13028 Imported appliances from workspace break the blueprint appliance list
* 10553 Windows generation for some formats fails due to some registry keys
* 10854 'uforge template list' shows created time in local time while modified time in UTC
* 13077 Creating an Oracle-based target format using the CLI raises an error
* 13080 Can't connect to a CentOS 6.7 AWS instance with SSH from a "whitebox" migration
* 12854 'uforge pimages list' fails with AttributeError
* 9637 Creating a migration with unauthorized characters in name succeed through the API
* 6495 Highlighted element does not handle overflow correctly
* 12759 ImageDTO returned from API has always CentOS 7 as distributionName when image generated from software
* 12284 Windows on Azure generated from UForge-published image for Blackbox migration does not start correctly
* 12909 Mandatory fields are not highlighted in account summary of user
* 12116 Command to launch distribution population is wrong in administration part
* 11942 Sourced network interfaces are not detected by the scan agent
* 6316 Windows scan fails if second disk is full
* 12856 uforge-sync.bin overwrites PID file and makes a service behave strangely
* 12605 Files & Folders scan tab displays wrong information
* 10096 There are inconsistencies in the French translation 
* 12806 Downloading an OpenShift image directly retrieves the archive without explanation
* 12588 Cannot delete multiple users in Workspace Members page
* 12734 Publishing to Azure ARM, K5 and VCenter terminate with error when it takes more than 8 hours
* 10068 Error generating Windows Server 2012r2 Standard Full English for Amazon AWS (VirtIO drivers issue)
* 9404 Error while generating an Azure image from a Windows Server 2012-R2 appliance
* 9247 Unable to generate Windows Server 2012R2

3.8.fp10
--------

Release Date: 2019-02-04

New Features
~~~~~~~~~~~~
* Added a new ``Delta`` tab in Migrations section to visually compare the difference two scan results (from one or more live instances).  This allows users to visualize which files have been added, modified or deleted.  Users can browse the filesystem, search and filter the results.  This feature does not provide differences in the packages added, modified or deleted between the two scans at this time.
* Introduce the new user interface Blueprint Composer which allows users to create and deploy multi-node applications. Please note the following restrictions:
    • This release currently supports Linux and Amazon AWS only.
    • For the deployment of the blueprint, UForge must be associated with the new AMP version 5.3
    • You need to install the Brooklyn Plugin Uforge after the installation of AMP server by following the procedure described in Admin Guide->Further AppCenter Configuration->Configuring Cloudsoft AMP
    • The Browsers that support the Blueprint Composer are the latest public releases of Firefox and Chrome.
    • Only the English version of the Blueprint Composer view is available.
    • Blueprints created with a version of UForge older than 3.8.FP10 will be deleted
    • Note that this new release brings an API break for Blueprint DTO model.

Known Issues
~~~~~~~~~~~~
* Package file deletions are not detected when comparing scans

Enhancements
~~~~~~~~~~~~
* Disable Software Bundle generation page if no base OS available
* Inject firewall configuration package when "ask during installation" is selected on Centos 7
* Disable unsupported "ask during installation" firewall option on Debian and Ubuntu

Bug Fixes
~~~~~~~~~
* 8626 After scanning Windows 2016, one service, CDPUserSvc_XXXXX, is missing on the list of scan results
* 8871 Changing partitioning from Advanced to Basic in a template imported from a Windows scan leads to generation error
* 10519 ISO image created by UForge does not respect UTC
* 11777 Password is displayed in clear text on Summary for an application
* 12265 When publishing an appliance from blueprint UI, the row is moved to the bottom of the table
* 12280 CentOS 5 scan fails without explicit message when duplicated GPG Pubkey packages are installed
* 12293 Updates counter on appliance view is placed too far to the right
* 12337 Copyright customized through config.xml is not shown
* 12433 User password displayed in clear when deploying Windows image on AWS
* 12474 Reset the password after an attempt of sign-in with a wrong password fails
* 12480 Root password is displayed in clear inside the generated machine image
* 12483 A previously assigned mountpoint can't be reused in the UI after a file system type change
* 12619 Password is displayed in clear text on Summary for a workspace

3.8.fp9
-------

Release Date: 2018-12-21

New Features
~~~~~~~~~~~~
* Ability to generate a software component to a Docker image. The user can select any Linux distribution as a "Base OS".
* Support of hotkey Escape (ESC) to cancel/close a popup window.
* UForge logs can now be pushed to an ELK instance.

Enhancements
~~~~~~~~~~~~
* UForge Microsoft Azure images now use the Azure agent version 2.2.14-1 for Debian 8 (Jessie)
* UForge Microsoft Azure images now use the Azure agent version 2.2.18-3 for Debian 9 (Stretch)
* Improved Outscale publish connector robustness
* Blueprint deploy view has been improved. The user can now see which blueprint appliances are not ready to be deployed.
* Blueprint deploy view has been improved. Required actions for deploying the blueprint can now be triggered from this view.

Bug Fixes
~~~~~~~~~
* 6596 Unknown server error when editing incremental scan after deleting the base scan
* 9171 Publication to Fujitsu K5 timeout with slow network
* 9419 The forgotten password email contains both the username and the password
* 11191 Firewall is not configured on an image generated from an appliance with firewall activated
* 11812 Google certificate is in clear in log when uploaded
* 11933 uforge-scan.bin fails to execute when /tmp has noexec mode
* 11970 Deleting pinned package looks ok in UI but package is not deleted
* 12193 Cannot publish to Outscale us-west-1
* 12349 uforge-scan.bin cannot be downloaded from the UForge UI
* 12352 SELinux configuration is not supported for Oracle Linux

3.8.fp8
-------

Release Date: 2018-11-12

New Features
~~~~~~~~~~~~
* Ubuntu 18.04 supported, except for synchronization feature in migration workflow.

Enhancements
~~~~~~~~~~~~
* Using uforge-sync binary, users can now synchronize the target environment with scans (without overlay) of openSUSE 42 systems.
* Improve usability of the add and delete actions on Projects page.
* Blueprint deploy view has been improved. Appliances used in the blueprint, with their status, are now displayed.

API changes
~~~~~~~~~~~
* Google Cloud Engine authentication method has been updated to support the new format used to authenticate to the platform. As a result, credentials accounts have changed. The certificate is no longer a ``.p12`` file but a ``.json`` file.

       .. note:: Old Google Cloud Engine credential accounts will no longer be usable. You must replace them by new ones in the correct format.

Bug Fixes
~~~~~~~~~
* 11941 Get requests to vault fail in proxy environment 
* 11863 Cannot login to migrated CentOS6 image on AWS with SSH key
* 11799 Outscale images built by UForge do not boot on Outscale
* 11637 Empty directories are not synchronized to the target machine with uforge-sync.bin
* 11608 Credentials secret keys are visible in clear for Outscale, Amazon and CloudStack
* 11548 "500 call failed" is shown on non-english summary tab when a new Windows template is created
* 11532 OpenShift installation is incomplete when upgrading to 3.8.fp6 with many users
* 11499 Vault in proxy environment does not work
* 11390 User email address should not be exposed to the other user
* 11354 Partitioning Table Volumes subtitle misses a white space
* 10870 Publishing to Google Compute creates unnecessary disks and images
* 10697 Cannot publish to GCE when AppCenter is behind a Proxy Server
* 10503 Mislabelled UForge on Update tab when creating a Windows appliance
* 10444 When user quota limit of appliance is set, "Quota used" increases by 2 when importing from scan
* 10443 Cannot create Azure VM from published VHD from AWS Ubuntu template - No NIC detected
* 8989 Some French translations are not accurate or missing
* 8897 Spelling mistakes in English i18n constants
* 5224 Typo: "Unformated" in Install Profile -> Partitioning
* 1351 "Internal server error." displayed when publishing a Google Compute Engine with wrong credentials

3.8.fp7
-------

Release Date: 2018-10-01

New Features
~~~~~~~~~~~~
* UForge administrator can now register and manage software repositories and operating systems from the user interface
* Users can deploy Windows instances from published machine images to Azure

Enhancements
~~~~~~~~~~~~
* UForge Microsoft Azure images now use the Azure agent version 2.2.21 for Ubuntu 14.04 and 16.04
* UForge Microsoft Azure images now use the Azure agent version 2.2.18 for Red Hat Enterprise Linux 6 and 7
* Using ``uforge-sync`` binary, users can now synchronize the target environment with scans (without overlay) of Debian 6 systems
* New icon in the UI for blueprints

API changes
~~~~~~~~~~~
* Update the Repository DTO model: rename field ``officiallySupported`` to ``coreRepository``

Deprecated Features
~~~~~~~~~~~~~~~~~~~
* UForge command line tool option ``--officialySupported`` for command ``org repo create`` is deprecated. Please Use ``--coreRepository`` instead

Bug Fixes
~~~~~~~~~
* 8341 Fixed issue allowing japanese characters to be used in the description field for an OS Profile
* 8934 Fixed issue to allow a user to correctly delete a pinned package in the OS profile of a template
* 8936 Fixed validation tooltips where backslashes are actually not supported
* 8940 Fixed unclear error message when editing a software component bootscript used in an ongoing generation
* 10708 Fixed issue when generating an ISO image from a scan of a live system with CentOS installed
* 10822 Fixed issue generating Ubuntu 10.04 with the latest ``debootstrap`` package
* 11096 Fixed the unpinning of a package from failing in the UI
* 11201 Fixed arrow buttons from expanding in Distribution > OS Profile view in the UI
* 11226 Cannot log in to a CentOS AWS instance with SSH key pair set by AWS
* 11292 Replaced ``vssadmin.exe`` with ``diskshadow.exe`` to properly flush Windows registry during migration process
* 11349 Fix to display tenant name in the details of a published image for OpenStack
* 11375 Fixed refresh issue for the top navigation menu to display its children when the window is resized horizontally
* 11376 Fixed refresh issue for the main navigation menu to display its items when the window is resized vertically
* 11492 Fixed misaligment in the Updates notification information in the UI
* 11504 Fixed issue with the blueprint view filter being cut during loading

3.8.fp6
-------

Release Date: 2018-08-20

New Features
~~~~~~~~~~~~
* New option to migrate (Lift & Shift) an instance without transferring any overlay information (only keep the operating system information, remove software application and users data)
* Using uforge-sync binary, users can now synchronize the target environment with scans (without overlay) of Ubuntu 16.04, 14.04, 12.04 systems.
* Support generation and publication of Linux machine images for OpenShift. However, it is no longer possible to publish from a Docker image to OpenShift.

Enhancements
~~~~~~~~~~~~
* UForge Microsoft Azure images now use the Azure agent version 2.2.18 for CentOS
* Improve display of error details for failed migrations
* Enhance Clone Appliance view to display the version and revision of the current appliance to be cloned
* Improve usability of the add and delete actions on MySoftware page
* Clicking on "UForge AppCenter" (top-left corner) now redirects the user to the dashboard
* Clicking on an Appliance now redirects to the Stack tab
* Ability to publish Windows 2016 appliances on Fujitsu K5 cloud

API changes
~~~~~~~~~~~
* Update the Image DTO model: rename field applianceUri to parentUri.

Bug Fixes
~~~~~~~~~
* 5175 UI returns 500 call failed when portal has changed and requires clearing cache and reloading
* 7195 /etc/sysconfig/system-config-firewall file created after migration though it is not supported in RHEL 5.2
* 8050 CentOS 5 scan fails with duplicate GPG Pubkey package installed without explicit message
* 8439 UForge version displayed in the portal is incorrect
* 8724 The file name of a cloned software is incorrect
* 9475 /etc/UShareSoft/uforge-install-config-CheckRootLogin.sh not found after CentOS blackbox migration to AWS
* 10246 CLI timeout following `subscription os add` with many users
* 10653 CLI command `template info --all` always displays 0
* 10811 Deployment of Linux images to Microsoft Azure does not take ssh key into account
* 10478 Deleting a publication raises errors
* 11045 Deleting two publications raises errors
* 11059 Migration does not launch generation in a multi-node UForge environment
* 11170 Impossible to delete a PublishImage that comes from a migration
* 11171 Deleting an Image from a Scan does not work
* 11318 Some dependencies of platform tools are not injected when generating from a scan
* 11343 uforge-install-config does not execute correctly for Ubuntu 14.04

3.8.fp5
-------

Release Date: 2018-07-09

New Features
~~~~~~~~~~~~
* Allow users to cancel running migrations
* API users can now publish to OpenShift from a Docker image (compatible with Hammr CLI), tested on OpenShift Online and OpenShift Origin
* BTRFS filesystem support
* New customizable opt-in message in Sign Up page.
* Support Entrypoint in Docker images
* Users can deploy Windows instances from published machine images to AWS.

Deprecated Features
~~~~~~~~~~~~~~~~~~~
* Remove support of following formats: Abiquo, Eucalyptus, Flexiant, Nimbula

Enhancements
~~~~~~~~~~~~
* The uforge-migrate binary displays now the progress of each phase.
* User can specify the network bandwidth allowed for data transfer when scanning a Windows system.

Bug Fixes
~~~~~~~~~
* 10251 VirtualBox image of UFIAB fails to boot with initrd root filesystem dependency failure
* 10331 Generation stucked at 55% and nothing work anymore after it
* 10335 Failed to import OVA image into vCenter
* 10430 Publish to all regions of Outscale does not work in UForge (unsupported regions, ami id out of date, wrong user for connection)
* 10555 On AppCenter with many users, appliance GET for one user has performance issues
* 7617 In the publish views, some select lists are randomly sorted
* 8638 License cannot be changed in the clone Software
* 9847 [Documentation] File size of /boot/grub2/i386-pc/core.img is changed during blackbox/whitebox migration
* 10217 Floating point exception occurs on uforge-scan.bin
* 10325 OAR jobs logs show WELD "Exception in thread"
* 1415 Portal - Language selection menu truncated in firefox
* 9672 SLES 11 scan sticks during creating report
* 9676 When adding a certificate for the creation of a google compute engine, the spinner never stops
* 9782 Windows black box migration failed at publication with classCastException
* 9836 [Documentation] configuration to connect to AMP is incorrect for multinodes environnement
* 9956 Overlapping text when generate an K5 image from a Linux scan
* 9961 Migration is stuck in progress
* 10103 Import a bundle first as first action will block subsequent template imports
* 10105 Scrollbar is not well displayed on deployments and blueprints views
* 10588 Windows on Azure generated from UForge-published image for Whitebox migration does not start correctly.
* 10657 You cannot save a Windows template imported from a scan with an error.
* 10795 Generation of a Debian 8 Server OS profile image fails with server install profile

3.8.fp4
-------

Release Date: 2018-05-01

New Features
~~~~~~~~~~~~
* The automated migration process is now available for Windows
* Cloud credentials are now stored in a new secret manager (Vault) in order to improve security
* New option to exclude some files and directories when migrating a live machine
* Introduce the new Blueprint module which allows users to create and deploy multi-node applications. This release currently supports Linux and Amazon AWS only.

Enhancements
~~~~~~~~~~~~
* Improve the migration details page in the user interface

Bug Fixes
~~~~~~~~~
* 3695 No space left on virtual disk is not caught as an error and generation returns "internal server error"
* 9013 Docker image format generated by UForge is incompatible with latest Docker executables
* 9044 Publication to AWS or Outscale: message when cannot connect to proxy is misleading
* 9406 Azure publishing feature transfers VM images via HTTP instead of HTTPS
* 9555 Subscription quota update command without a limit sets the limit to 0
* 9679 Google Compute Engine Regions are outdated
* 9733 Use public IP address instead of private one in the security group rule when publishing to AWS
* 9918 UI freeze in Google Chrome when entering the 'Stack' tab
* 9940 Cannot publish to azure with existing account through REST API
* 9941 Image generation for K5 failed while checking the dependencies
* 10099 Boot scripts cannot be found in the cloned MySoftware

3.8.fp3
-------

Release Date: 2018-04-16

New Features
~~~~~~~~~~~~
* Windows system with an extended partition is now supported for templating, image generation, and scanning.
* The automated migration process is now available for all supported platforms

Enhancements
~~~~~~~~~~~~
* Visualise all the software (libraries, drivers or packages) that is automatically injected by UForge during the generation of a machine image for a specific target cloud environment.
* "Migrations" tab now contains both automated migration and scan features, available under "Lift & Shift" and "Re-platform" sub menus
* Allow users to delete multiple migrations
* 9057 Remove End-of-life Microsoft Azure Classic

Restrictions
~~~~~~~~~~~~
* Currently the image generation of Linux system for K5 migration fails. This is due to a known issue during dependency checking.
  9941 Image generation for K5 failed while checking the dependencies

Bug Fixes
~~~~~~~~~
* 9937 Segmentation fault when generating a machine image
* 9762 Default chunk size for publishing to K5 is too low and leads to K5 error
* 9411 When scanning a machine, UForge portal UI displays a big OS Logo. Fix the logo size in the header and allow to debug CSS from remote computers
* 9771 Docker image format should not be proposed for Windows migrations
* 9781 When selecting Azure platform, AWS or K5 for generation, an unknown server error is displayed
* 9424 When a migration is deleted, the error message of the migration tool is not relevant
* 9641 Delete account with a certificate, after a publish, fails
* 9639 Wrong URI for Scan installProfile
* 9657 Unable to publish Docker images to Azure Containers
* 9615 Generation dashboard is in error after a Migration Generation Stage has completed
* 8917 After Blackbox Migration, RHEL5.3 is updated to RHEL5.5.
* 9598 Provisioning on Azure fails due to No DVD device
* 9582 SLES generation for Azure format does not work (no platform tools injected)
* 9258 Unable to do a Debian 8 blackbox migration to Microsoft Azure
* 9074 Improve error handling in getCredAccountResources service
* 9188 Partitions in LVM logical groups/volumes appear in wrong order if a group's name is changed
* 9532 When importing an appliance, Firewall is set to Ask during installation
* 9502 NIC configuration disappears on install profile in an imported appliance from a CentOS5.7 scan
* 8682 If the root context is not modified in the deployment wizard, the page redirected to at the end is / which is forbidden
* 9081 "should contains" to be replaced with "should contain" in bootscript name in UI
* 6200 Fix scan installProfile URI
* 8973 Ubuntu 16.04 image generation requires debootstrap to be of version at least 1.0.85 and does not support "proposed" packages
* 9094 If a user's home directory is in a multiple levels folder hierarchy, the user creation fails
* 8951 Remove GoldenPath field from uforge.xsd
* 9176 Please remove obsolete Squid directives from /etc/squid/squid.conf
* 7937 Debian dependency checker returns too much detailed message when failed.
* 8371 Add SYSPREP setting in windows yml template
* 9317 uforge_update.sh fails with SQL error in db_modifs_180130-01.sql

3.8.fp2
-------

Release Date: 2018-03-05

New Features
~~~~~~~~~~~~
* The migration process (scan, generate and publish) can now be automated by using a simple and intuitive work-flow in the user interface. The user simply creates a new migration through the interface, launches it from the server to migrate and follows the overall status.

	.. note::

		* This new feature is available under the "Migrations" tab. This tab already existed. This previous tab has been renamed "Scans".
		* This feature is currently available for the following platforms : Fujitsu K5, Microsoft Azure, VMware vCenter, Openstack and SUSE Cloud.

Enhancements
~~~~~~~~~~~~
* 9004 As a user, I would like to have my appliance revision incremented when I modify an attached SoftwareBundle
* 5994 Provide a way to offuscate and reveal passwords in the UI
* 9054 RHEL 7 and 6 should be supported in K5 format

Bug Fixes
~~~~~~~~~
* 9091 iptables rules have been changed - whitebox migration
* 8721 Scanning CentOS 6 generated with UForge results in an error
* 8648 The Deployment Wizard should block non-numeric inputs on the Proxy Port
* 8646 Debian 9 missing in the deployment wizard
* 8745 Disk usage increases when uploading twice the same file for limited quota user
* 9178 Overlapping text in the summary view of an appliance template
* 8664 systemd-tmpfiles-clean.timer clears /tmp thus removes the symlinks and breaks AppCenter
* 8613 [RHEL7/CentOS7] /boot/grub2/device.map is cleared during Blackbox/Whitebox Migration
* 8222 Software bundles are not extracted in the correct directory
* 8847 ComboList in portal appears empty after selection with firefox
* 8921 Add scan import to golden cancel webservice
* 9024 Outscale image generation limited to 10 GB disk size
* 8701 UForge deployment fails behind proxy because of unaccessible ntp server
* 8422 openssh bits in uforge template do not need to be sticky anymore
* 9198 Service mysql restart display FAILED message
* 8865 Despite deleting the golden images, the files of the golden image are not deleted in the file system
* 9053 user login and password are sent to the user in the same e-mail message
* 8842 Docker publishing cannot be canceled
* 9010 After a file upload error, the value of consumed diskusage increases when the quota is changed to unlimit
* 8412 Ubuntu 14.04 generation fails with stack overflow error
* 7493 A letter '&' in comment field of /etc/passwd file changed to '&amp;' after migration
* 8873 CPU usage of Dozer thread sticks to over 99% and never ends
* 8995 script machine_infos.sh fails
* 9045 Shell injection, the user can execute command as tomcat user when calling publish api
* 9026 template imported from scan fails to generate
* 8899 openssh package version has been changed after a white box migration
* 9185 If user role is only Migrator, an error occurs in cloud account selection of publish image
* 9165 No need to call reset_eventcontroller.sh in the crontab anymore
* 9125 After Black box migration, Firewall setting changes to enable in Cent OS 6.
* 9257 Error occurs when migrating to Hyper-V of Windows Server 2012 R2
* 9108 [Server-side]Add the Timezone param to uforge-install-config.conf
* 9089 [Server-side]don't write a firewall param if the template is Windows
* 8320 "user enable" uforge-cli command always resets password
* 8987 "Request timeout" is be shown during a generation and requires refreshing the screen
* 8444 Missing /opt/Tomcat/.bashrc file
* 9144 a logical group disappears after removing an LVM disk
* 9175 removed partitions from a volume group still remain in the group
* 9210 Scanning a CentOS 7 server with a CD in the drive causes an additional hard disk to be added

3.8.fp1
-------

Release Date: 2018-02-01

New Features
~~~~~~~~~~~~
* Users can deploy Linux instances from published machine images to Apache CloudStack.
* Fujitsu Cloud Service K5 jp-east-2 region is supported.

Enhancements
~~~~~~~~~~~~
* The uforge-sync binary now requires the API endpoint, to improve usability.
* Enhance UI headers for Apps and Migration tab.
* Add French internationalization.


Bug Fixes
~~~~~~~~~
* 835 Refresh the generation page causes a 500 call failed
* 1060 Files permissions changes after blackbox migration
* 1064 Timezone is always reset to Europe/London after a blackbox migration.
* 1416 Portal - MySoftware - Files - package file path not restored
* 6769 The presence of a malformed filename in the source filesystem causes the scan to hang badly (segmentation fault)
* 7019 Filename vCneter.log spelled wrong. Should be vCenter.log.
* 7021 Backslash not properly escaped in credentials causes VMware vCenter publish to fail
* 7087 UTC and ARC settings in /etc/sysconfig/clock has been changed during blackbox migration
* 7112 In a blackbox migration  /etc/USharesoft/ files are not deleted
* 7134 'org repo delete' fails frequently and the error message is confusing
* 7187 Parameters in /etc/fstab has been changed during blackbox generation
* 7193 /etc/gshadow has been changed during the blackbox migration
* 7196 /etc/shadow lock and 'no password' options not taken into account during migration
* 7214 Popup have an unexpected scroll bar
* 7275 Error message does not include any information when publish to AWS failed.
* 7284 Directories/files changed during blackbox migration
* 7416 Packages of custom repo still visible even after repo detach
* 7423 The UI view for searching and adding an OS package to a template shows too many versions
* 7659 Blackbox migration of CentOS7.2 on fresh forge failed "Detaching loop"
* 7680 /etc/sysconfig/clock file is added in Blackbox and Whitebox migration
* 7684 /etc/sysconfig/kernel is modified after  Blackbox and Whitebox migration
* 7687 Hammr deploy OpenStack retrieval timed out
* 7712 Viewing bootscript of a cloned template raises a 404 error
* 7730 Uploading several files to a Software bundle randomly leads to 500 error
* 7738 Bad concatenation in kernel parameters after two blackbox of a debian appliance
* 7747 The field for disk size at generation for AWS should be in GiB
* 7748 Unsupported AWS region are displayed in the publish view (cn-north-1, us-gov-west-1)
* 7758 UForge cli takes minutes to manipulate repositories
* 7819 uforge-sync does not resolve fully qualified names for AppCenter endpoint
* 7869 Enabled Firewall  becomes disabled after Scan and Import
* 7935 uforge-scan output is not proper english
* 7940 Version of uforge-scan is not consistent with version of UForge platform it has been downloaded from
* 8054 "UForge critical error" e-mail is sent after a successful scan import
* 8055 "C:\fakepath" is displayed when selecting an appliance archive to import
* 8062 Publishing a compressed image failed on OpenStack
* 8063 UForge update logs show WELD "Exception in thread"
* 8064 Software bundles are not extracted in the correct directory
* 8076 "500 call failed error" when uploading a boot script to a project catalog
* 8097 VMware vCenter publish fails in multiple vlan/vnic environment
* 8102 Display explicit error message when template has no partition
* 8146 Typo in Artifact account in the creation page
* 8180 Folders where VMware vCenter templates will be published are changed randomly
* 8192 OpenStack generation from scan fails with message Installed packages more than expected (240 > 237)
* 8214 When moving from Name to Version with the tab key, the Version box becomes red (error)
* 8306 Export, Import and Scan features does not work when UForge user login contains '@'
* 8322 Publishing a compressed image failed on VMware vCenter
* 8326 The order of NICs is changed by exporting/importing a template appliance
* 8476 uforge-cli command template info throws AttributeError: NoneType for Windows Appliances
* 8649 Only one architecture of an OS package is kept when there were multiple in the imported template
* 8889 uforge-cli command template info throws AttributeError for Windows Appliances
* 8898 Publish on OVH Openstack does not work

Known issues
~~~~~~~~~~~~
* In some situation, deployment in CloudStack could fail if the CloudStack image is duplicated in different zones.

Compatibility issues
~~~~~~~~~~~~~~~~~~~~
* The import / export of appliance templates from UForge 3.7 to UForge 3.8 may not work if the template contains software bundles. Please refer to the section Importing and Exporting Templates (Updating a 3.7 Appliance) to make your template compatible.


3.8
---

Release Date: 2018-02-01

New Features
~~~~~~~~~~~~

* SLES 11 and 12 operating system supported for all features (templating and migration)
* OpenSUSE 42.x operating system supported for all features (templating and migration)
* Debian 9 (Stretch) operating system supported for all features (templating and migration)

For other features, please refer to 3.7.fp8 release notes

Migrating to 3.8
~~~~~~~~~~~~~~~~

For specificities relating to migrating a 3.7 or 3.7.fpx to 3.8 please refer to the section Migrating UForge from 3.7 to 3.8 in the Admin guide.


Bug Fixes
~~~~~~~~~

* 8656 Estimated size of Windows templates is 0 B
* 8653 Generation fails for an imported Windows template built on a "Scan To Golden" profile
* 8578 Generation does not finish if there are volume groups though it was cancelled or got an error
* 8577 Image generation of a CentOS 6.7 scan from ISO fails in grub installation
* 8507 Update error message about RHEL not supported for K5 in UForge
* 8505 Publishing a Docker image fails in slow network environment
* 8501 Export, import and scan features do not work when UForge user login contains ``@``
* 8486 Image generated from a CentOS 7.1 scan from ISO fails to boot showing the grub shell
* 8499 UNIX group ID is not taken into account when import a template
* 8437 Name and downloadId missing in the download URL for appliances generated from a template
* 8417 Windows image generation from a legacy golden fails without displaying the details if required disk is too small
* 8309 Windows automatically shuts down after being instantiated on AWS
* 8270 Scan of CentOS 7 fails with message ``Unable to rebuild package dialog 1.2 x86_64`` on 3.8
* 8094 Whitebox image generation failure with ``non encrypted password`` error
* 8078 Add arch selection, in order to allow install of package with multiple architectures
* 7831 Scan on CentOS 7.4 with LVM fails silently and causes generation error


3.7.fp8
-------

Release Date: 2017-10-16

New Features
~~~~~~~~~~~~
* Using uforge-sync binary, users can now synchronize the target environment with scans (without overlay) of CentOS 6, 7, Red Hat Enterprise Linux 6, 7 and Debian 7, 8 systems.
* Microsoft Azure connector has been updated. Previously with UForge the machine image was publish as a "vhd" blob file in the Azure cloud Account. Now an image will be accessible in the cloud console from this blob file. In order to support this additional information must be entered in ``Credentials`` for Microsoft Azure ARM connector.
* Support generation and registration of machine images for Oracle Cloud with the metered service subscriptions.
* Users can deploy Linux instances from published machine images to Microsoft Azure ARM.

	.. note:: If you have an existing Microsoft Azure ARM account already setup in UForge, then you must update the credential information.

Enhancements
~~~~~~~~~~~~
* Improved deploy button tooltip in Dashboard view
* Replace spinner by ProcessStepWidget for OpenStack
* UForge users can inject specific VirtIO drivers for Windows appliances
* Amazon AWS connector can now publish Windows images with multiple disks

Bug Fixes
~~~~~~~~~
* 1311 Error "WELD-ENV-002002: Weld SE container was already shut down" can be displayed in the portal when generation failed
* 6196 Image generation from a scan fails when the repository is updated by the spider simultaneously
* 6359 Scan comparison shows two packages with different versions instead of package's target scan
* 6669 Installing UForge AppCenter in a root context other than /uforge breaks some features
* 6848 Disk order and partition number are not kept after migration
* 6862 All fields in deployment tables should be displayed entirely
* 6957 When scaning a RHEL machine, UForge portal UI displays a big RHEL Logo in IE
* 7004 /etc/sudoers is reinitialized after migration
* 7016 CentOS images from blackbox migration fail to start on Microsoft Azure: no WALinuxAgent installed
* 7076 Generation error when extracting overlay if size is bigger than / (root) partition
* 7109 Tooltip of source used on a deployments is wrong if come from a scan
* 7114 Protect Deploy Activity from incomplete publish image
* 7149 When scanning Windows 2012 R2 and blackboxing it to VirtualBox, Windows requires to change admin password at first boot
* 7150 Error when specifying a directory of more than depth 1 in mount points in install profile
* 7164 Blackbox migration of debian 7, 8 and ubuntu 14 does not boot on major clouds due to DHCP ipv6 activation
* 7184 NetworkManager package is present in "server" profile and the generation does not work with Azure
* 7194 CentOS 5.11 scan fails at phase 4/7 by segmentation fault
* 7253 Scan fails with SQL Error: 1205, SQLState: HY000 when running two scans concurrently
* 7408 CentOS whiteBox migration to Microsoft Azure: wrong version of WALinuxAgent selected
* 7510 CentOS 7.4 and Oracle Linux 7.4 fail to boot
* 7673 Generation of a migrated debian 8 fails randomly
* 7686 Whitebox migration : multinic method of second interface is disabled instead of static or manual
* 7697 File System type not set properly for logical partitions
* 7711 Outscale cloud: cannot see and publish in new regions


3.7.fp7
-------

Release Date: 2017-09-04

New Features
~~~~~~~~~~~~
* Fujitsu Cloud Service K5 US, Finland and Spain regions are supported.
* Amazon AWS Ohio, Mumbai, London and Canada regions are supported.
* Introduce a REST API for users to list files to synchronize to the target environment after a CentOS scan without overlay.
* Users can deploy instances from published machine images to OpenStack.
* Images can be created in PXE format for CentOS.

Enhancements
~~~~~~~~~~~~
* Improve UI text and tooltip message for K5 Project ID

Bug Fixes
~~~~~~~~~
* 944 Scanning failed at Phase 6 (heap memory in eventcontroller)
* 960 Failed to delete together two or more artifact accounts with error
* 985 Error occurs in the UForge CLI images list if user has generations only from scan
* 1323 Using AWS zone ap-south-1 (Mumbai) with the API raises a publication error
* 1370 CLI command "uforge image list" results in SimpleFacetValueError when the keyboard is "jp"
* 1379 Artifact accounts display bug under IE
* 1419 Package kernel-PAE not recognized as a kernel when doing a black box migration
* 5740 Incomplete Japanese translation of the "Pull a remote file" dialog box
* 6103 Modifying a used software component restriction rule raises an internal server error
* 6108 Support /dev/cciss/cXdXpX disks that exist on HP server
* 6133 AWS connector logs are set to DEBUG and should be set to NORMAL
* 6157 Debian Scan: All the files are uploaded to UForge server when scanning with overlay
* 6162 Tooltip when generating from scan (blackbox) mentions install profile changes
* 6165 Comparing two scans, there are no strike-through on the delete files
* 6235 Uploading boot scripts or my software using IE causes an error if the local directory path is included
* 6261 UForge UI for Windows scan using the command line misses the -p parameter
* 6268 Viewing My Software from Imported Scan raises an unknown server error
* 6385 When a scan source CentOS 7 machine has "/boot/grub/grub.conf", the generated image does not boot
* 6386 Messaging bus consumer breaks down if cloud-init is installed on UForge server
* 6444 Error in NIC API examples, request URI is wrong
* 6501 Deleted package files are recovered after migration
* 6507 Debian migration cannot detect missing info changes
* 6573 "Uploading Archive 0 %" and "Transfer in progress -1 %" are displayed alternately by template import
* 6611 Error message when trying to delete a UForge OS profile milestone not self-explanatory
* 6614 UForge web service response (401 unauthorized) is not RFC compliant
* 6683 Heap memory error when scanning VM with huge files number
* 6753 AWS publish failed in some circumstances
* 6760 uforge-install-config TUI does not appear when using K5 Console
* 6768 Unable to build a package using rpmgen with a file located in /
* 6853 Unable to rebuild RPM, using rpmgen, with hook scripts containing a commented spec file section tag like #%install
* 6903 Outscale Publish final status never reached
* 6906 yum is injected during blackbox migration
* 6917 When cloning an appliance, the parentApplianceUri of the clone is null

3.7.fp6
-------

Release Date: 2017-07-24

New Features
~~~~~~~~~~~~
* Introduce a new deployment feature which allows users to deploy published machine images directly to Amazon, without having to connect to their Amazon account.
* The scan of Windows is optimized by extracting only "used space" from target disks on the source system. "Free space" on target disks will not be copied by the scan.
* Fujitsu Cloud Service K5 Germany region is supported.

Enhancements
~~~~~~~~~~~~
* Improved the information displayed in the banner when administering OS Profiles. Now the date the OS profile was created is displayed (for Windows only), as well as the size and the associated distribution (for both Windows and Linux)
* Support Linux multiple disks publication to AWS

Bug Fixes
~~~~~~~~~
* 851 After K5 Black box migration, some packages were updated
* 884 uforge-scan.bin ignores option ``-e "/"``
* 953 Cannot add a license in a MySoftware
* 972 Internal error happens when clicking directory name ``{|}`` in Files & Folders in Migration
* 982 debootstrap.log should be preserved
* 1001 Publish Outscale changes proxy instance ID configuration
* 1003 Image generation fails for a CentOS 6.1 imported from scan and upgraded to the 6.5 milestone
* 1061 /etc/ssh/sshd_config file is changed after the migration.
* 1304 All POST and PUT API examples in the documentation miss Content-Type parameter
* 1305 API doc cloudAccount_create needs correcting
* 1306 API doc for creating API key pair needs updating
* 1317 Dashboard quotas are used more than 100%
* 1353 Correct https_proxy that breaks perl cloud (openstack) connectors
* 1393 Remove uforge-anytermd and remove its pid file after uninstalling uforge-install-config
* 1402 Migrator Role does not allow to generate image from a Scan
* 5447 Scanning a UForge server raises an internal server error and a Mapping error
* 6084 Images list Cli command returns wrong OS name
* 6127 The latest ``perl-Compress-Raw-Zlib`` package is not used
* 6147 Generation fails when selinux packages are manually specified in a MySoftware
* 6148 /etc/ssh/sshd_config modifications are ignored after a blackbox migration
* 7431 Cannot generate debian 8 when /tmp partition is small and has large extra files
* 7806 Scan comparison raises a 500 call failed error when clicking on a package modification of the comparator
* 7842 Cloud account password is saved as plain text in text file
* 7915 cleanup_tickets.sh and cleanup_scans.sh do not delete Generated Images from Scans
* 7986 The UI in Stack \u003e OS profile displays the latest version of the OS packages instead of the one used in the appliance template

3.7.fp5
-------

Release Date: 2017-06-12

New Features
~~~~~~~~~~~~
* Add a mechanism to restrict the usage of a project (for Administrator) or software bundle (in MySoftware for users) based on a Distribution name, family, architecture or for an output format
* Administrators can now create a golden image from the UI. Once a Windows scan is complete, the Administrator can import the scan as a golden image. This golden image will be available to users to create new Windows appliances.
* Publication to VMware vCenter improved. UForge now publishes templates to VMware vCenter, rather than instances. The datacenter information (ESXi hypervisor, datastore, network name, etc) is automatically retrieved by UForge and prefilled for publication to VMware VCenter.

Bug Fixes
~~~~~~~~~
* 7560 Oracle Linux is treated as RHEL at scan
* 7622 OpenSUSE generation Failed with default OS Profile due to package conflict.
* 7423 CentOS 7.3 VBox image never ends up booting if '/' partition is a logical volume
* 7429 Error message is always logged in oar error log "unary operator expected" when generating Linux image.
* 7361 Windows generation error when disk too small does not raise an understandable error message
* 7620 db_modifs and postupdate modifs applied to several versions of UForge are not handled properly by update_mechanism
* 7758 On the generation UI pages, there is a CSS issue between headers and content
* 7853 License of WS2008R2 is displayed on WS2012R2
* 7771 Hover message on items in scan list is not internationalized
* 7871 Updating the certificate of a google cred account generates a null pointer exception and "this should never happen, please updateTemplateInfo" in the UI
* 7682 Published image tag summary displayed wrong tooltip
* 7635 The type of the password input field of artifact accounts is inconsistent in the UI
* 7584 Applications and Services for Windows are not parsed correctly
* 7767 Missing timezone data on branch master
* 7897 500 error occurs in image generation using a template without a partition table
* 7669 The EventController service does not consume ScanAction event correctly
* 6285 AWS publication is not working behind an external http proxy
* 7630 Outscale publish connector is not working anymore
* 6789 When booting a migrated instance, haldaemon starts although autostart setting is off in the source machine
* 7298 Import/Export Software bundle fails with "Permission denied error"

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
* Support for Ubuntu 16.04
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

* The object ``DistribProfile`` is now an abstract object and is implemented by either `linuxProfile-object <apidoc_>`_ or `windowsProfile-object <apidoc_>`_ (which are new object types).
* The deprecated object ``DistribProfileTemplate`` has now been deleted.  The object `distribProfile-object <apidoc_>`_ is now used.  The attribute ``standardProfileUri`` is now deprecated and been set to ``null``.

Due to the above object changes, the following API calls have been modified:

	* `orgOSWindows-add <apidoc_>`_
	* `orgOSWindows-delete <apidoc_>`_
	* `osTemplate-getAll <apidoc_>`_
	* `osTemplate-get <apidoc_>`_
	* `orgOSWindows-getAll <apidoc_>`_

The following API calls have been added to enhance scanned Windows-based workloads:

	* `workspaceTemplateOSApplications-get <apidoc_>`_
	* `workspaceTemplateOSServices-get <apidoc_>`_
	* `workspaceTemplateOSPartitionTable-get <apidoc_>`_


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

.. _apidoc: http://docs.usharesoft.com/projects/appcenter-api-reference/en/latest/
