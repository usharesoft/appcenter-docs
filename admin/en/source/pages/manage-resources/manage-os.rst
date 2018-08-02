.. Copyright 2018 FUJITSU LIMITED

.. _manage-os:

Listing the Installed OSes
--------------------------

All the open source operating system versions are delivered as part of the UForge repository. Proprietary operating systems are not.

From the UI you can see the installed OSes by going to the ``Administration`` page and going to the ``Distributions`` tab.

To get the complete list of the currently supported operating systems on the UForge platform using the CLI run the command ``uforge os list``.

Log in to one of the UForge instances:

.. code-block :: shell

	$ uforge os list -u $ADMIN -p $PASS
	Getting operating systems ...
	Success: Found the following operating systems
	+----------------+-----------------+--------------+--------+---------+---------+------------------+
	| Distribution   | Version         | Architecture | Access | Visible | Default | Release Date     |
	+----------------+-----------------+--------------+--------+---------+---------+------------------+
	| CentOS         | 5               | i386         |   X    |    X    |         | NK               |
	| CentOS         | 5.3             | i386         |   X    |    X    |         | 2009-03-17       |
	| CentOS         | 5.3             | x86_64       |   X    |    X    |         | 2009-03-18       |
	| CentOS         | 5.4             | i386         |   X    |    X    |         | 2009-10-01       |
	| CentOS         | 5.4             | x86_64       |   X    |    X    |         | 2009-10-01       |
	| CentOS         | 5.5             | i386         |   X    |    X    |         | 2010-04-27       |
	| CentOS         | 5.5             | x86_64       |   X    |    X    |         | 2010-04-27       |
	| CentOS         | 5.6             | i386         |   X    |    X    |         | 2011-03-07       |
	| CentOS         | 5.6             | x86_64       |   X    |    X    |         | 2011-03-22       |
	| CentOS         | 5.7             | i386         |   X    |    X    |    X    | 2011-08-29       |
	.... rest omitted for clarity

All the open source operating system versions are delivered as part of the UForge repository. Proprietary operating systems such as Red Hat Enterprise Linux or older operating system versions (that have been EOL'd) are not; therefore it is the responsibility of the end customer (or reseller if they have correct agreements in place to re-distribute an operating system) to have the original ISO images of the operating system in questions.

.. note:: You can only add an operating system version that is officially supported by the UForge AppCenter and has been certified by Fujitsu.  

.. _os-list:

Listing the Enabled OSes with CLI
---------------------------------

To get a list of the operating systems that are currently enabled on your UForge platform using the CLI run the command ``uforge org os list``.

Login to one of the UForge instances:

.. code-block :: shell
	
	$ uforge org os list -u $ADMIN -p $PASS
	Getting operating systems ...
	Success: Found the following operating systems
	+----------------+-----------------+--------------+--------+---------+---------+------------------+
	| Distribution   | Version         | Architecture | Access | Visible | Default | Release Date     |
	+----------------+-----------------+--------------+--------+---------+---------+------------------+
	| CentOS         | 6.3             | i386         |   X    |         |         | 2012-07-01       |
	| CentOS         | 6.3             | x86_64       |   X    |         |         | 2012-06-26       |
	| CentOS         | 6.4             | i386         |   X    |         |         | 2013-03-01       |
	| CentOS         | 6.4             | x86_64       |   X    |    X    |         | 2013-03-01       |
	.... rest omitted for clarity

.. _adding-os:

Adding an OS to an Organization
-------------------------------

You can add a supported OS using the UI or using the CLI.

Older operating system versions (that for example have been EOL'd) or proprietary operating systems such as Red Hat Enterprise Linux are not automatically populated at the installation phase. Population of such operating system versions must be done manually after the initial installation of UForge is complete.

.. note:: You can only add an operating system version that is officially supported by the UForge platform and has been certified by Fujitsu. 

Before adding an OS to the organization you must retrieve data from the Fujitsu repository. For more information refer to :ref:`populate-db-os`.

Adding an OS Using the UI
~~~~~~~~~~~~~~~~~~~~~~~~~

In order to add an OS to an organisation you manage:

	#. From the ``Administration`` page, go to the ``Distributions`` tab.
	#. Click on ``add`` in the top left.
	#. Select the distribution, version and architecture from the list.
	#. Click ``add``.
	#. You must add repositories to this distribution from the list of ``Available repositories`` on the ``Repositories`` tab. The repositories that you can add are listed in the bottom list. The top list is the list of repositories that have been added.

		.. image:: /images/add-repo.png

	#. You must populate the repositories. To do so, click on ``populate`` at the top right and follow the instructions in the pop-up window.

		.. image:: /images/populate-popup.png

	.. note:: The populate process will provide the base OS profiles.

	#. To add an OS profile (opional), go to the ``OS Profiles`` tab. You can create one by clicking on ``add os profile`` in the top right. Refer to :ref:`create-custom-os`.

When adding CentOS, Debian and Red Hat, the major versions are automatically marked as Milestones when the distribution is added to the platform. For more information on Milestones, refer to :ref:`manage-milestone`.


Adding an OS Using the CLI
~~~~~~~~~~~~~~~~~~~~~~~~~~

In order to add an OS to an organization you must do the following:

	#. Connect to one of your UForge platform instances.
	#. Create the distribution in the organization. 
	#. Create the repositories. This includes the official repository (see :ref:`populate-official-repo`) as well as the specific UForge tool repository (see :ref:`populate-tool-repo`). This is covered in steps 6 and 7 in the section :ref:`populate-centos`.
	#. Attach the repository to the distribution.
	#. Launch Spider to fill the repositories with the packages. 

This must be done for each version of an OS. For example CentOS 6.5 i386. It is not possible to do this for all CentOS versions at once.

For example, to add CentOS 6.5 i386:

	1. Add the distribution to the organization, using the official name and version.

	.. code-block :: shell

		$ uforge org os add --name CentOS --version 6.5 --arch i386 -u $ADMIN -p $PASS
		Getting default organization ...
		Success: Add operating system OK

	2. Create the repositories.

	.. code-block :: shell

		$ uforge org repo create --name CentOSplus --repoUrl http://vault.centos.org/6.5/centosplus/i386 --type RPM -u $ADMIN -p $PASS
		Getting default organization ...
		Success: Created repository with url [http://vault.centos.org/6.5/centosplus/i386] to default organization
		+------+----------------+------------+---------------------------------------------+-------+
		|   Id | Off. Supported | Name       | Url                                         | type  |
		+------+----------------+------------+---------------------------------------------+-------+
		|  355 |                | CentOSplus | http://vault.centos.org/6.5/centosplus/i386 | RPM   |               

	3. Attach the repository to the distribution.

	.. code-block :: shell

		$ uforge org repo os attach --name CentOS --version 6.5 --arch i386 --repoId 355 -u $ADMIN -p $PASS
		Getting default organization ...
		Success: Attach distribution to repository [355]

	4. Launch Spider and other population steps. Refer to :ref:`populate-db-os`.

When adding CentOS, Debian and Red Hat, the major versions are automatically marked as Milestones when the distribution is added to the platform. For more information on Milestones, refer to :ref:`manage-milestone`.


.. _creating-repo:

Creating a Repository Using UI
-------------------------------

You can manage existing repositories and create new ones from the UForge UI, from the ``Administration`` page.

	#. Go to the ``Repositories`` tab. The existing repositories will be listed.
	#. To create a new repo, click on ``add repository`` in the top right.
	#. Enter the name and URL.

		.. image:: /images/create-repo.png

	.. note:: Check ``core repositories`` for all the default repositories of officially supported OSes (for a list of supported OSes, refer to :ref: uforge-supported-os-formats). Do not check this box for repositories that are not part of the core distribution, such as epel or VMware tools. When generating a machine image, packages tagged as ``core`` are installed first, before other packages.


.. _updating-repo:


Updating a Repository Using CLI
-------------------------------

You can manually launch an update of a specific repository using ``uforge org repo refresh``. To do this, you must have the ``repoId``, which you can find using ``uforge org repo list``. For example, to launch the update:

.. code-block :: shell

	$ uforge org repo refresh trigger --repoId 355 -u $ADMIN -p $PASS

In order to view the status of a repository update, launch:

.. code-block :: shell

	$ uforge org repo refresh status --repoId 355 --refreshId 887 -u $ADMIN -p $PASS

To view a list of all the updates launched, use: ``uforge org repo refresh list``.


.. _removing-os:

Removing OSes and Distributions
-------------------------------

You cannot remove an OS from an organization once added. You can only disable it, in which case it can no longer be used. 

To disable a distribution, for example CentOS, for all users of an organization specify only the OS name, in which case all the versions will be disabled::

	$ uforge org os disable --name CentOS -u $ADMIN -p $PASS

If you only want to remove a specific version of a distribution (for example CentOS 5), run::

	$ uforge org os disable --name CentOS --version 5 -u $ADMIN -p $PASS

