.. Copyright 2016 FUJITSU LIMITED

.. _populate-db-os:

Populating Database with OS Packages
====================================

Open source operating system versions are taken from the official repository mirror or the UForge repository cache. Proprietary operating systems such as Red Hat Enterprise Linux are not; therefore it is the responsibility of the end customer (or reseller if they have correct agreements in place to re-distribute an operating system) to have the original ISO images of the operating system in questions. Refer to :ref:`proprietary-pkg`.

To enable UForge to generate images based on the operating system it needs all the meta-data of the packages comprising the operating system. This meta-data includes the location in the storage of the package as well as dependency information that is used during generation. Furthermore, certain specific UForge packages must be populated for this operating system.

.. note:: Custom repositories are supported in UForge. They are treated like other OS packages.

.. warning:: When using UForge, you have to comply with the license agreement of OSes and software which UForge handles. Especially, topics below are typical and remarkable:
	
	Publishing OS image of RHEL (Red Hat Enterprise Linux) subscription to public cloud
		Cloud provider has to be CCSP (Certified Cloud & Service Provider) and you must register to Red Hat Cloud Access. For more details, please confirm with cloud provider.
	
	Scanning server
		You have to check whether the licenses of OS and software which the source machine contains permit you to use them on destination server which you migrate to. In case that the source machine contains rpm packages which Red Hat provides, you must register repository with these rpm packages to UForge. Unless you register repository, UForge automatically regenerates rpm packages which the source machine contains, and regenerated packages are NOT supported by Red Hat.

	Handling Microsoft Windows
		Refer to :ref:`windows-uforge`.

.. note:: When installing a major version, all minor versions will be included. If you want to restrict to only a few minor versions, you will have to follow this procedure for each minor version you want to install.  

.. warning:: If you are going to use the migration feature for RHEL or CentOS, then it is highly recommended to register the major version repositories.

In order to add an operating system in your UForge AppCenter you must:

	1. Connect to one of your UForge platform instances
	2. Create the OS in the organization.
	3. Create the repository. This includes the official repository as well as the specific UForge tool repository.
	4. Link the distribution to the repository.
	5. Launch spider to fill the repository with the packages.

The following is a concrete example to begin the population of CentOS 6.5 64bit:

	1. Connect to UForge:

	   .. code-block:: shell

		$ ssh root@<your UForge instance>

	2. In order for the following commands to be generic you can set some variables in your environment.

	   .. code-block:: shell

		$ . /etc/UShareSoft/uforge/uforge.conf
		ADMIN=$UFORGE_WEBSVC_LOGIN ; PASS=$UFORGE_WEBSVC_PASSWORD

	3. Run the following CLI command in order to create the distribution::

		$ uforge org os add --name CentOS --arch x86_64 --version 6.5 -u $ADMIN -p $PASS

	4. Enable the new operating system for the organization. The following command enables CentOS 6.5 in the default organization::

		$ uforge org os enable --name CentOS --version 6.5 --arch x86_64 -u $ADMIN -p $PASS

	5. Enable the user to use the operating system.  The user must be a member of the organization. This step can be done later.::

		$ uforge user os enable --account root --name CentOS --version 6.5 --arch x86_64 -u $ADMIN -p $PASS

	6. Create the distribution repository. The following example shows the creation of an official CentOS repository. However, you can also create a repository based on the UForge official repository as shown later.

		For example, for the CentOS 6.5 repository:

			.. code-block:: shell

				$ uforge org repo create --name "CentOS 6.5 os" --repoUrl http://vault.centos.org/6.5/os/x86_64/ --type RPM --officiallySupported -u $ADMIN -p $PASS

				Success: Created repository with url [http://vault.centos.org/6.5/os/x86_64/] to default organization

		The ``–-name`` specified here is the “tagname” that will be shown in the UI when creating an appliance.
		The ``--repoUrl`` can be either ``http://`` or ``file://``

		Only use ``--officiallySupported`` for distributions that are part of the core distribution. For example, epel or vmwatools are not officially part of the distribution, therefore you should not use the variable ``--officiallySupported``.

		The syntax of the repoURL for Debian based OSes follows that of the sources.list file.

		See `https://wiki.debian.org/SourcesList <https://wiki.debian.org/SourcesList>`_  and `https://wiki.debian.org/Multiarch/HOWTO <https://wiki.debian.org/Multiarch/HOWTO>`_ (section Setting up apt sources)

		Typically, a correct value for the repoURL parameter is either

			* http://httpredir.debian.org/debian jessie main
			* http://ftp.riken.go.jp/Linux/ubuntu/ precise-security multiverse restricted universe main

		Users may also want to restrict per architecture. For example::

			[arch=amd64] http://distros-repository.usharesoft.com/ubuntu/ ...

		`http://distros-repository.usharesoft.com/ <http://distros-repository.usharesoft.com/>`_ is an official public repository that users can use to populate the distributions. Official repositories such as Ubuntu and Debian periodically delete some package versions. In the http://distros-repository.usharesoft.com/ repository, package versions are never deleted. This can facilitate investigations on older systems.

		To populate the distribution using the official UForge repository for CentOS::

			uforge org repo create --name "CentOS 6.5 os" --repoUrl http://distros-repository.usharesoft.com/centos/6/os/x86_64 --type RPM --officiallySupported -u $ADMIN -p $PASS

		The following is a list for all the other distributions:

		``Ubuntu (example 10.04)``

			* http://distros-repository.usharesoft.com/ubuntu/lucid/mirror/bouyguestelecom.ubuntu.lafibre.info/ubuntu/ lucid multiverse restricted universe main 
			* http://distros-repository.usharesoft.com/ubuntu/lucid-security/mirror/bouyguestelecom.ubuntu.lafibre.info/ubuntu/ lucid-security multiverse restricted universe main
			* http://distros-repository.usharesoft.com/ubuntu/lucid-proposed/mirror/bouyguestelecom.ubuntu.lafibre.info/ubuntu/ lucid-proposed multiverse restricted universe main
			* http://distros-repository.usharesoft.com/ubuntu/lucid-backports/mirror/bouyguestelecom.ubuntu.lafibre.info/ubuntu/ lucid-backports multiverse restricted universe main
			* http://distros-repository.usharesoft.com/ubuntu/lucid-updates/mirror/bouyguestelecom.ubuntu.lafibre.info/ubuntu/ lucid-updates multiverse restricted universe main


		``Debian (example version 6)``

			* http://distros-repository.usharesoft.com/debian/squeeze/mirror/ftp.fr.debian.org/debian/ squeeze contrib non-free main
			* http://distros-repository.usharesoft.com/debian/squeeze-updates/mirror/ftp.fr.debian.org/debian/ squeeze-updates contrib non-free main 
			* http://distros-repository.usharesoft.com/debian/security/squeeze/updates/mirror/security.debian.org/ squeeze/updates main contrib non-free

		``CentOS (example CentOS 6.7)``

			* http://distros-repository.usharesoft.com/centos/6.7/updates/x86_64
			* http://distros-repository.usharesoft.com/centos/6.7/extras/x86_64
			* http://distros-repository.usharesoft.com/centos/6.7/os/x86_64

		``OpenSUSE (example version 12.2)``

			* http://distros-repository.usharesoft.com/opensuse/distribution/12.2/repo/oss/
			* http://distros-repository.usharesoft.com/opensuse/distribution/12.2/repo/non-oss/
			* http://distros-repository.usharesoft.com/opensuse/update/12.2/

		``Scientific Linux (example version 6.6)``

			* http://distros-repository.usharesoft.com/scientificlinux/6.6/x86_64/os/
			* http://distros-repository.usharesoft.com/scientificlinux/6.6/x86_64/updates/fastbugs/
			* http://distros-repository.usharesoft.com/scientificlinux/6.6/x86_64/updates/security/

	7. You must then add the specific UForge tool repository. The repository to attach is one of the following:

		``CentOS`` (example version 6, arch x86_64): 

			* http://distros-repository.usharesoft.com/usharesoft/centos/6/x86_64/

		``Red Hat Enterprise Linux`` (example version 6.2, arch x86_64): 

			* http://distros-repository.usharesoft.com/usharesoft/rhel/6.2/x86_64/

		``OpenSUSE`` (example version 12.1, arch x86_64): 

			* http://distros-repository.usharesoft.com/usharesoft/opensuse/12.1/x86_64/

		``Scientific Linux`` (example version 6, arch x86_64): 

			* http://distros-repository.usharesoft.com/usharesoft/scientificlinux/6/x86_64/

		``Debian`` (example version 8, arch x86_64) [arch=amd64]:

			* http://distros-repository.usharesoft.com/usharesoft/debian/ jessie main

		``Ubuntu`` (example version 14.04, arch x86_64) [arch=amd64]:

			* http://distros-repository.usharesoft.com/usharesoft/ubuntu/ trusty main

	    For example::

		$ uforge org repo create --name "CentOS 6.5 os" --repoUrl http://distros-repository.usharesoft.com/usharesoft/centos/6/x86_64/ --type RPM -u $ADMIN -p $PASS

	8. Attach repository to the distribution as follows::

		$ uforge org repo os attach --name CentOS --arch x86_64 --version 6.5 --repoIds 354 -u $ADMIN -p $PASS
	
	   The ``–-repoIds`` specified here are the space-separated “id” of previously created repositories, shown by command ``uforge org repo list -u $ADMIN -p $PASS``.

	9. Populate repository packages:

		.. code-block:: shell

			$ /opt/UShareSoft/uforge/cron/update_repos_pkgs.sh

		.. note:: This procedure may take a long time.

	10. To verify if the procedure is terminated, run the following command:

		.. code-block:: shell

			$ tail -f /tmp/USER_DATA/FactoryContainer/logs/repos/spider/<directory name with date>/spider.stdout 
		
		The procedure is terminated when you see the line::

			INFO  CheckForRepositoriesUpdates:275 - Entering CheckForRepositoriesUpdates->terminate()

	11. Create OS profile based on packages (minimal, server, etc.)::

		$ /opt/UShareSoft/uforge/bin/runjob.py sorter_low_prio -d CentOS -v 6.5 -a x86_64

	
