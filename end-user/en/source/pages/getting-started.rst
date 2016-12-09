.. Copyright 2016 FUJITSU LIMITED

.. _uforge-appcenter-getting-started:

Getting Started
===============

.. _uforge-signup:

Signing In to UForge Portal
---------------------------

To sign in, go to the UForge Portal sign in page:

	`https://your-uforge-server-hostname/uforge/ <https://your-uforge-server-hostname/uforge/>`_

The UForge Portal has the following pages, accessible from the left-hand sidebar:

	* ``Dashboard``: It shows statistics on your UForge usage.
	* ``VM Builder``: This is where your appliances are created and listed. You also go to this page to add custom software, update packages in appliances, and create images, among other things.
	* ``Collaboration``: This is a private area where you can share appliances with other users who are part of your workspace. These users must be invited and join your workspace. They can be part of your organization or part or another organization.
	* ``Migration``: This is where you can launch a scan of a live system, view the results, or compare scans.
	* ``Credentials``: This is where you manage your cloud account information, SSH keys and API keys.
	* ``Profile``: This is your UForge account information.
	* ``Administration``: (only for administrators of platform).  Provides administration tasks including operating system and formats management.

.. warning:: Depending upon your access rights one or more of these tabs may not be visible.

.. image:: /images/uforge-sidebar.png

.. _uforge-supported-browsers:

Supported Browsers for UI Access
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The following browser versions are officially supported when using the user interface:

	* Firefox v35 or later
	* Chrome v29 or later
	* Safari v9 or later
	* Internet Explorer 11 or later
	* Opera v15 or later

.. note:: Javascript is required when using the UI. The following error will appear if you have disabled Javascript (check your browser configuration, plugins or security settings). 

.. image:: /images/javascript-warning.png

.. _uforge-ui-languages:

Language Selection for the Graphical User Interface
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The UForge UI is accessible in different languages. You can select the language using the round flag options at the top right-hand of the UI, next to the sign-in button. 

.. image:: /images/uforge-ui-language.png

.. note:: The language choice is saved at the level of the browser and not of the user account. 


.. _uforge-basic-concepts:

Basic Concepts
--------------

.. _uforge-basic-concepts-org:

Organization
~~~~~~~~~~~~

UForge AppCenter is a multi-tenant platform which can serve multiple users.  All the resources of the platform are held within an Organization.  The organization contains:

	* One or more users
	* One or more operating systems
	* A project catalog containing software components that can be used by its users
	* One or more formats available to generate images

.. image:: /images/uforge-organization.jpg

.. _uforge-basic-concepts-user:

User
~~~~

Each user on the platform has:

	* an **Appliance Library** containing all the appliance templates created by the user
	* a **Software Library** (My Software) containing all the custom software uploaded by the user, which can be used in one ore more appliance templates
	* a list of one or more **Cloud Accounts** to allow the user to publish and register generated machine images to various cloud and virtualization platforms

.. image:: /images/user-private-space.jpg


.. _uforge-basic-concepts-appliance:

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

.. _uforge-basic-concepts-workspace:

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




