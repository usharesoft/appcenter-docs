.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

Getting Started
===============

Signing Up for an Account
-------------------------

If you are not using an onsite version of UForge AppCenter, then you can get started by signing up for a free account on UForgeNow.  Go to the registration page on the UShareSoft website at::

	https://www.usharesoft.com/signup/signup.html

Only your name and email are required. When the account has been activated, you will receive an email with your account credential information.

.. warning:: If you are using an onsite version, then your sign up process may be different.

To sign in, go to the UForgeNow sign in page::

	https://uforge.usharesoft.com/signin

The UForgeNow portal is layed out in with the following main tabs:

* ``Dashboard``. It shows statistics on your UForge usage.
* ``Marketplace``: This page is shown by default when you login. This is the area where you can see and share appliances with other users in your organization.
* ``VM Builder``: This is where your appliances are created and listed. You also go to this page to add custom software, update packages in appliances, and create images, among other things.
* ``Collaboration``: This is a private area where you can share appliances with other users who are part of your workspace. These users must be invited and join your workspace. They can be part of your organization or part or another organization.
* ``Migration``: This is where you can launch a scan of a live system, view the results, or compare scans.
* ``My Account``: This is your UForge account information.
* ``Administration``: (only for administrators of platform). This shows statistics on usage and image generations, for example. You can also manage Operating Systems. Information on the Administration tab is described in the Administration Guide // TODO ADD LINK.

.. warning:: Depending upon your access rights one or more of these tabs may not be visible.

.. image:: /images/uforge-ui-tabs.jpg


Basic Concepts
--------------

Organization
~~~~~~~~~~~~

UForge AppCenter is a multi-tenant platform which can serve multiple users.  All the resources of the platform is held within an Organization.  The organization contains:

* One or more users
* One or more operating systems
* A project catalog containing software components that can be used by its users
* One or more formats available to generate images
* A "Marketplace" where users can publically share their Appliances with other users in the organization

.. image:: /images/uforge-organization.jpg

User
~~~~

Each user on the platform has:

* an **Appliance Library** containing all the appliance templates created by the user
* a **Software Library** (My Software) containing all the custom software uploaded by the user, which can be used in one ore more appliance templates
* a list of one or more **Cloud Accounts** to allow the user to publish and register generated machine images to various cloud and virtualization platforms

.. image:: /images/user-private-space.jpg

Users also have access to shared spaces:

* **Marketplace**: a space shared with other members of the same organization, to share appliances
* **Collaboration Workspace**: a space where users can invite the users they wish to share appliance templates with.

Appliance Templates
~~~~~~~~~~~~~~~~~~~

An Appliance Template is meta-data describing a software stack.   It consists of five layers, namely:

* an ``Install Profile`` (mandatory) - specific information for the first time the image boots
* an ``OS Profile`` (mandatory) - a list of operating system packages. Each operating system within the organization provides one or more standard OS profiles to choose from when creating the OS Profile of the appliance template. It is also possible to create custom OS profiles.
* ``Projects`` (optional) - a list of Project software components chosen from the Organization´s Project Catalog
* ``My Software`` (optional) - a list of software components chosen from the User´s private "Software Library"
* ``Configuration`` (optional) - configuration information including boot scripts and/or other software components to manage the image after provisioning

Depending on the user´s roles and privileges, the user may only have access to a restricted number of operating systems, projects and image formats the organization has to offer.

Using an appliance template, the user can generate machine images in different formats. For some formats, the user can publish and register machine images to a target cloud or virtualization platform. Each appliance template stores meta-data regarding each machine image generated and published.

Workspaces
~~~~~~~~~~

Each user can also create and join **workspaces**. A workspace is an area for members to collaborate and share appliances. A workspace is created and maintained by users. The user can invite members to be part of a workspace. When the user invites a member that is not part of the UForge database, an email is sent to the new member to invite them to register on UForge.

The workspaces are listed under the ``Collaboration`` tab. Each workspace has:

* an activity stream, which lists the members' comments, the activities, such as invites and appliances shared
* a templates page, which lists all the templates shared with the people that are part of the workspace
* a members page where the user who created the workspace (the workspace administrator) can invite new members, delete members or change the role of a workspace member.

Members of a workspace are either:

* ``Administrator``. This is generally the user who has created the workspace. There can be several administrators in a workspace. The administrator can invite or delete members and is able to delete a workspace.  The administrator has all the same basic rights as the collaborator.
* ``Collaborator``. The collaborator has the same basic rights as the Guest, but can also share templates.
* ``Guest``. They can read and post to the activity stream, and import templates into their private appliance library.


Supported Machine Image Types
-----------------------------

The following is a list of supported OSes that users can use as the guest operating system when creating their appliance templates.

+------------------+------------------------------------------+------------------------------------------+
| OS               | Factory                                  | Migration                                |
+==================+==========================================+==========================================+
| CentOS           | 5.x, 6.x, 7.x (32bit and 64bit)          | 5.2+, 6.x, 7.x (32bit and 64bit)         |
+------------------+------------------------------------------+------------------------------------------+
| Debian           | 5.x, 6.x, 7.x (32bit and 64bit) & 8      | 5.x, 6.x, 7.x (32bit and 64bit) & 8      |
+------------------+------------------------------------------+------------------------------------------+
| Fedora           | 8 to 22                                  | 8 to 22                                  |
+------------------+------------------------------------------+------------------------------------------+
| Open SUSE        | 11.x, 12.x (32bit and 64bit)             | 11.x, 12.x (32bit and 64bit)             |
+------------------+------------------------------------------+------------------------------------------+
| Oracle Linux*    | 5.x, 6.x, 7.x (32bit and 64bit)          | 5.1, 6.x, 7.x (32bit and 64bit)          |
+------------------+------------------------------------------+------------------------------------------+
| Pidora           | 18 to 21                                 | Not Supported                            |
+------------------+------------------------------------------+------------------------------------------+
| Raspbian         | 7                                        | Not Supported                            |
+------------------+------------------------------------------+------------------------------------------+
| RedHat*          | 4.6, 5.x, 6.x, 7.x (32bit and 64bit)     | 5.2+, 6.x, 7.x (32bit and 64bit)         |
+------------------+------------------------------------------+------------------------------------------+
| Scientific Linux | 5.x, 6.x, 7.x (32bit and 64bit)          | 5.2+, 6.x, 7.x (32bit and 64bit)         |
+------------------+------------------------------------------+------------------------------------------+
| Ubuntu           | 9.x, 10.x, 11.x, 12, 12.04, 13.x, 14.x,  | 9.x, 10.x, 11.x, 12, 12.04, 13.x, 14.x,  |
|                  | 15, 15.04 (32bit and 64bit)              | 15, 15.04 (32bit and 64bit)              |
+------------------+------------------------------------------+------------------------------------------+
| Windows Server   | Windows i386, Windows x86_64,            | 2008R2, 2012, 2012R2                     |
|                  | 2008R2, 2012, 2012R2                     |                                          |
+------------------+------------------------------------------+------------------------------------------+
| Windows          | Windows i386 Windows x86_64              | Windows i386 Windows x86_64              |
+------------------+------------------------------------------+------------------------------------------+

The following machine image formats are supported:

* Phyiscal: ISO
* Virtual: KVM, Xen, XenServer, Hyper-V, VMware ESXi, VHD, QCOW2, Raw, VirtualBox, VMware Server/Fusion, Vagrant
* Cloud: AWS, Microsoft Azure, GCE, OpenStack, VMware vSphere vCenter, VMware VCD, VMware VCAC, CloudStack, Flexiant, Eucalyptus, Nimbula

