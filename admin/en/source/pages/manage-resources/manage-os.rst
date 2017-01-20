.. Copyright 2017 FUJITSU LIMITED

.. _manage-os:

Viewing The Supported OSes
--------------------------

All the open source operating system versions are delivered as part of the UForge repository. Proprietary operating systems are not.

To get the complete list of the currently supported operating systems on the UForge platform use the command ``uforge os list``.

.. code-block :: shell

	Login to one of the UForge instances
	# uforge os list -u $ADMIN -p $PASS
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

All the open source operating system versions are delivered as part of the UForge repository. Proprietary operating systems are not; therefore it is the responsibility of the end customer (or reseller if they have correct agreements in place to re-distribute an operating system) to have the original ISO images of the operating system in questions.

.. _os-list:

Viewing the Enabled OSes
------------------------

To get a list of the operating systems that are currently enabled on your UForge platform use the command ``uforge org os list``.

.. note:: You can only add an operating system version that is officially supported by the UForge platform and has been certified by UShareSoft. 

.. code-block :: shell

	Login to one of the UForge instances
	# uforge org os list -u $ADMIN -p $PASS
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

Older operating system versions (that for example have been EOL'd) or proprietary operating systems such as RedHat Enterprise Linux are not automatically populated at the installation phase. Population of such operating system versions must be done manually after the initial installation of UForge is complete.

.. _adding-os:

Adding an OS to an Organization
-------------------------------

Before adding an OS to the organization you must retrieve data from the UShareSoft repository. For more information refer to :ref:`populate-db-os`.

In order to add an OS to an organization you must do the following:

	1. Add the distribution to the organization.
	2. Create the repositories.
	3. Attach the repository to the distribution.
	4. You will then need to launch Spider to fill the repositories. 

This must be done for each version of an OS. For example CentOS 6.5 i386. It is not possible to do this for all CentOS versions at once.

For example, to add CentOS 6.5 i386 to the default org:

In order to add the OS to a specific distribution, you will need to specify ``--org <value>`` for each of the commands in the steps below.

	1. Add the distribution to the organization, using the official name and version.

	.. code-block :: shell

		# uforge org os add --name CentOS --version 6.5 --arch i386 -u $ADMIN -p $PASS
		Getting default organization ...
		Success: Add operating system OK

	2. Create the repositories.

	.. code-block :: shell

		# uforge org repo create --name CentOSplus --repoUrl http://vault.centos.org/6.5/centosplus/i386 --type RPM -u $ADMIN -p $PASS
		Getting default organization ...
		Success: Created repository with url [http://vault.centos.org/6.5/centosplus/i386] to default organization
		+------+----------------+------------+---------------------------------------------+-------+
		|   Id | Off. Supported | Name       | Url                                         | type  |
		+------+----------------+------------+---------------------------------------------+-------+
		|  355 |                | CentOSplus | http://vault.centos.org/6.5/centosplus/i386 | RPM   |               

	3. Attach the repository to the distribution

	.. code-block :: shell

		# uforge org repo os attach --name CentOS --version 6.5 --arch i386 --repoId 355 -u $ADMIN -p $PASS
		Getting default organization ...
		Success: Attach distribution to repository [355]

	4. Launch Spider and other population steps. Refer to :ref:`populate-db-os`.


Removing OSes and Distributions
-------------------------------

You cannot remove an OS from an organization once added. You can only disable it, in which case it can no longer be used. To disable a distribution, for example CentOS for all users of an organization you can specify only the OS name, in which case all the versions will be removed::

	# uforge org os disable --name CentOS -u $ADMIN -p $PASS

If you only want to remove a specific version of a distribution (for example CentOS 5), run::

	# uforge org os disable --name CentOS --version 5 -u $ADMIN -p $PASS

