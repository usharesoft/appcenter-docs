.. Copyright 2018 FUJITSU LIMITED

.. _populate-official-repo:

Official UForge Tool Repositories
---------------------------------

The following is a list for all the distributions that can be used to create an official repository. These will be used in step 6 of the examples below.

	``Ubuntu (example 10.04)``

		* http://distros-repository.usharesoft.com/ubuntu/lucid/mirror/bouyguestelecom.ubuntu.lafibre.info/ubuntu/ lucid multiverse restricted universe main 
		* http://distros-repository.usharesoft.com/ubuntu/lucid-security/mirror/bouyguestelecom.ubuntu.lafibre.info/ubuntu/ lucid-security multiverse restricted universe main
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

	``RedHat Enterprise Linux``

		* You need to use your own repository.



.. _populate-tool-repo:

Specific UForge Tool Repositories
---------------------------------

The following is a list of specific UForge tool repositories that can be added. These will be used in step 7 of the examples below.


	``CentOS`` (example version 6, arch x86_64): 

		* http://distros-repository.usharesoft.com/usharesoft/centos/6/x86_64/

	``Red Hat Enterprise Linux`` (example version 6.2, arch x86_64): 

		* http://distros-repository.usharesoft.com/usharesoft/rhel/6.2/x86_64/

	``Oracle Linux`` (example version 6, arch x86_64)

		* http://distros-repository.usharesoft.com/usharesoft/oraclelinux/6/x86_64/

	``OpenSUSE`` (example version 12.1, arch x86_64): 

		* http://distros-repository.usharesoft.com/usharesoft/opensuse/12.1/x86_64/

	``Scientific Linux`` (example version 6, arch x86_64): 

		* http://distros-repository.usharesoft.com/usharesoft/scientificlinux/6/x86_64/

	``Debian`` (example version 8, arch x86_64) [arch=amd64]:

		* http://distros-repository.usharesoft.com/usharesoft/debian/ jessie main

	``Ubuntu`` (example version 14.04, arch x86_64) [arch=amd64]:

		* http://distros-repository.usharesoft.com/usharesoft/ubuntu/ trusty main


.. _populate-db-example:

Adding RPM Type OSes Using CLI
------------------------------

The following sections give examples for adding CentOS and RedHat Enterprise Linux using the CLI. They can be adjusted for your particular version, and are applicable to OpenSUSE and Scientific Linux.

.. _populate-centos:

Example for Adding CentOS
~~~~~~~~~~~~~~~~~~~~~~~~~

The following is a concrete CLI example to begin the population of CentOS 6.5 64bit:

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

				$ uforge org repo create --name "CentOS 6.5 os" --repoUrl http://vault.centos.org/6.5/os/x86_64/ --type RPM --coreRepository -u $ADMIN -p $PASS

				Success: Created repository with url [http://vault.centos.org/6.5/os/x86_64/] to default organization

		The ``--name`` specified does not need to be an official name. It is the repository name that will be shown in the UI when pinning an appliance.
		The ``--repoUrl`` can be either ``http://`` or ``file://``.

		.. warning:: You must use the ``--coreRepository`` flag for all the default repositories of officially supported OSes (for a list of supported OSes, refer to :ref: `uforge-supported-os-formats`). Do not use ``--coreRepository`` for repositories that are not part of the core distribution, such as epel or VMware tools. When generating a machine image, packages tagged as ``--coreRepository`` are installed first, before other packages. 

		`http://distros-repository.usharesoft.com/ <http://distros-repository.usharesoft.com/>`_ is an official public repository that users can use to populate the distributions. Official repositories such as Ubuntu and Debian periodically delete some package versions. In the http://distros-repository.usharesoft.com/ repository, package versions are never deleted. This can facilitate investigations on older systems.


	7. You must then add the specific UForge tool repository. The repository to attach for ``CentOS`` (example version 6, arch x86_64) is the following:

			* http://distros-repository.usharesoft.com/usharesoft/centos/6/x86_64/

	    For example::

		$ uforge org repo create --name "CentOS 6.5 os" --repoUrl http://distros-repository.usharesoft.com/usharesoft/centos/6/x86_64/ --type RPM -u $ADMIN -p $PASS

	.. note:: For a complete list of the different repositories that can be attached, refer to :ref:`populate-tool-repo`.

	8. Attach repository to the distribution as follows for each repository (your own repository and the UShareSoft tool repository)::

		$ uforge org repo os attach --name CentOS --arch x86_64 --version 6.5 --repoIds 354 -u $ADMIN -p $PASS
	
	   The ``--repoIds`` specified here are the space-separated “id” of previously created repositories, shown by command ``uforge org repo list -u $ADMIN -p $PASS``.

	9. Populate repository packages:

		.. code-block:: shell

			$ /opt/UShareSoft/uforge/cron/update_repos_pkgs.sh

		.. note:: This procedure may take a long time.

	10. To verify if the procedure is terminated, run the following command:

		.. code-block:: shell

			$ tail -f /tmp/USER_DATA/FactoryContainer/logs/repos/spider/<directory name with date>/spider.stdout 
		
		The procedure is complete when you see the line ``INFO`` ends with ``Entering CheckForRepositoriesUpdates->terminate()``

	11. Create OS profile based on packages (minimal, server, etc.)::

		$ /opt/UShareSoft/uforge/bin/distro_sorter.sh -d CentOS -v 6.5 -a x86_64

.. _populate-rhel:

Example for Adding Red Hat Enterprise Linux
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. note:: Before populating Red Hat Enterprise Linux, you should complete the steps in :ref:`proprietary-pkg`, unless you have a Red Hat Satellite, in which case you should contact your Red Hat Satellite administrator for the Satellite repo URL. 

The following is a concrete example to begin the population of Red Hat Enterprise Linux version 7, 64bit:

	1. Connect to UForge:

	   .. code-block:: shell

		$ ssh root@<your UForge instance>

	2. In order for the following commands to be generic you can set some variables in your environment.

	   .. code-block:: shell

		$ . /etc/UShareSoft/uforge/uforge.conf
		ADMIN=$UFORGE_WEBSVC_LOGIN ; PASS=$UFORGE_WEBSVC_PASSWORD

	3. Run the following CLI command in order to create the distribution::

		$ uforge org os add --name "RedHat Enterprise Linux" --arch x86_64 --version 7 -u $ADMIN -p $PASS

	4. Enable the new operating system for the organization. The following command enables Red Hat Enterprise Linux version 7 in the default organization::

		$ uforge org os enable --name "RedHat Enterprise Linux" --arch x86_64 --version 7 -u $ADMIN -p $PASS

	5. Enable the user to use the operating system.  The user must be a member of the organization. This step can be done later.::

		$ uforge user os enable --account root --name "RedHat Enterprise Linux" --arch x86_64 --version 7 -u $ADMIN -p $PASS

	6. Create the distribution repository. The following example shows the creation of an official RedHat Enterprise Linux repository. 

		.. code-block:: shell

			$ uforge org repo create --name "RedHat 7" --repoUrl http://<your-repo> --type RPM --coreRepository -u $ADMIN -p $PASS

		The ``--name`` specified here is the “tagname” that will be shown in the UI when creating an appliance.
		The ``--repoUrl`` can be either ``http://`` or ``file://``.

		.. warning:: You must use the ``--coreRepository`` flag for all officially supported OSes. If you do not include this argument the packages will not appear in the install profile of appliances built with the corresponding operating system. Do not use ``--coreRepository`` for distributions that are part of the core distribution. For example, epel or vmwatools are not officially part of the distribution, therefore you should not use ``--coreRepository`` when adding such repositories.

	7. You must then add the specific UForge tool repository. The repository to attach for RedHat Enterprise Linux version 7 arch x86_64 is the following:

			* http://distros-repository.usharesoft.com/usharesoft/rhel/7/x86_64/

	    For example::

		$ uforge org repo create --name "UShareSoft RedHat 7" --repoUrl http://distros-repository.usharesoft.com/usharesoft/rhel/7/x86_64/ --type RPM -u $ADMIN -p $PASS

	.. note:: For a complete list of the different repositories that can be attached, refer to :ref:`populate-tool-repo`.

	8. Attach repository to the distribution as follows for each repository (your own repository and the UShareSoft tool repository)::

		$ uforge org repo os attach --name "RedHat Enterprise Linux" --arch x86_64 --version 7 --repoIds 432 -u $ADMIN -p $PASS
	
	   The ``--repoIds`` specified here are the space-separated “id” of previously created repositories, shown by command ``uforge org repo list -u $ADMIN -p $PASS``.

	9. Populate repository packages:

		.. code-block:: shell

			$ /opt/UShareSoft/uforge/cron/update_repos_pkgs.sh

		.. note:: This procedure may take a long time.

	10. To verify if the procedure is terminated, run the following command:

		.. code-block:: shell

			$ tail -f /tmp/USER_DATA/FactoryContainer/logs/repos/spider/<directory name with date>/spider.stdout 
		
		The procedure is complete when you see the line ``INFO`` ends with ``Entering CheckForRepositoriesUpdates->terminate()``

	11. Create OS profile based on packages (minimal, server, etc.)::

		$ /opt/UShareSoft/uforge/bin/distro_sorter.sh -d RedHat -v 7 -a x86_64

Adding DEB Type OSes Using CLI
------------------------------

The following section give a CLI example for adding Ubuntu. It is also applicable for Debian.

.. _populate-ubuntu:

Example for Adding Ubuntu
~~~~~~~~~~~~~~~~~~~~~~~~~

The following is a concrete example to begin the population of Ubuntu 10.04 64bit:

	1. Connect to UForge:

	   .. code-block:: shell

		$ ssh root@<your UForge instance>

	2. In order for the following commands to be generic you can set some variables in your environment.

	   .. code-block:: shell

		$ . /etc/UShareSoft/uforge/uforge.conf
		ADMIN=$UFORGE_WEBSVC_LOGIN ; PASS=$UFORGE_WEBSVC_PASSWORD

	3. Run the following CLI command in order to create the distribution::

		$ uforge org os add --name Ubuntu --arch x86_64 --version 10.04 -u $ADMIN -p $PASS

	4. Enable the new operating system for the organization. The following command enables Ubuntu 10.04 in the default organization::

		$ uforge org os enable --name Unbuntu --version 10.04 --arch x86_64 -u $ADMIN -p $PASS

	5. Enable the user to use the operating system.  The user must be a member of the organization. This step can be done later.::

		$ uforge user os enable --account root --name Unbuntu --version 10.04 --arch x86_64 -u $ADMIN -p $PASS

	6. Create the distribution repository. The following example shows the creation of an official Ubuntu repository.

		.. code-block:: shell

			$ uforge org repo create --name "Ubuntu x86_64 lucid-main" --repoUrl "[arch=amd64] http://distros-repository.usharesoft.com/ubuntu/lucid-security/mirror/bouyguestelecom.ubuntu.lafibre.info/ubuntu/ lucid multiverse restricted universe main" --type DEB --coreRepository -u $ADMIN -p $PASS

			$ uforge org repo create --name "Ubuntu x86_64 lucid-security" --repoUrl "[arch=amd64] http://distros-repository.usharesoft.com/ubuntu/lucid-security/mirror/bouyguestelecom.ubuntu.lafibre.info/ubuntu/ lucid-security multiverse restricted universe main" --type DEB --coreRepository -u $ADMIN -p $PASS

			$ uforge org repo create --name "Ubuntu x86_64 lucid-backports" --repoUrl "[arch=amd64] http://distros-repository.usharesoft.com/ubuntu/lucid-backports/mirror/bouyguestelecom.ubuntu.lafibre.info/ubuntu/ lucid-backports multiverse restricted universe main" --type DEB --coreRepository -u $ADMIN -p $PASS

			$ uforge org repo create --name "Ubuntu x86_64 lucid-updates" --repoUrl "[arch=amd64] http://distros-repository.usharesoft.com/ubuntu/lucid-updates/mirror/bouyguestelecom.ubuntu.lafibre.info/ubuntu/ lucid-updates multiverse restricted universe main" --type DEB --coreRepository -u $ADMIN -p $PASS

		The ``--name`` specified here is the “tagname” that will be shown in the UI when creating an appliance.
		The ``--repoUrl`` can be either ``http://`` or ``file://``.

		.. warning:: You must use the ``--coreRepository`` flag for all officially supported OSes. If you do not include this argument the packages will not appear in the install profile of appliances built with the corresponding operating system. Do not use ``--coreRepository`` for distributions that are part of the core distribution. For example, epel or vmwatools are not officially part of the distribution, therefore you should not use ``--coreRepository`` when adding such repositories.

		The syntax of the repoURL for Debian based OSes follows that of the sources.list file.

		See `https://wiki.debian.org/SourcesList <https://wiki.debian.org/SourcesList>`_  and `https://wiki.debian.org/Multiarch/HOWTO <https://wiki.debian.org/Multiarch/HOWTO>`_ (section Setting up apt sources)

		Typically, a correct value for the repoURL parameter is either

			* http://httpredir.debian.org/debian jessie main
			* http://ftp.riken.go.jp/Linux/ubuntu/ precise-security multiverse restricted universe main

		Users may also want to restrict per architecture. For example::

			[arch=amd64] http://distros-repository.usharesoft.com/ubuntu/ ...

		`http://distros-repository.usharesoft.com/ <http://distros-repository.usharesoft.com/>`_ is an official public repository that users can use to populate the distributions. Official repositories such as Ubuntu and Debian periodically delete some package versions. In the http://distros-repository.usharesoft.com/ repository, package versions are never deleted. This can facilitate investigations on older systems.

	7. You must then add the specific UForge tool repository. The repository to attach for ``CentOS`` (example version 6, arch x86_64) is the following:

			* http://distros-repository.usharesoft.com/usharesoft/ubuntu/

	    For example::

		$ uforge org repo create --name "UShareSoft Ubuntu x86_64 lucid" --repoUrl "[arch=amd64] http://distros-repository.usharesoft.com/usharesoft/ubuntu/ lucid main" --type DEB -u $ADMIN -p $PASS

	.. note:: For a complete list of the different repositories that can be attached, refer to :ref:`populate-tool-repo`.

	8. Attach repository to the distribution as follows for each repository (your own repository and the UShareSoft tool repository)::

		$ uforge org repo os attach --name Ubuntu --arch x86_64 --version 10.04 --repoIds 354 -u $ADMIN -p $PASS
	
	   The ``--repoIds`` specified here are the space-separated “id” of previously created repositories, shown by command ``uforge org repo list -u $ADMIN -p $PASS``.

	9. Populate repository packages:

		.. code-block:: shell

			$ /opt/UShareSoft/uforge/cron/update_repos_pkgs.sh

		.. note:: This procedure may take a long time.

	10. To verify if the procedure is finished, run the following command:

		.. code-block:: shell

			$ tail -f /tmp/USER_DATA/FactoryContainer/logs/repos/spider/<directory name with date>/spider.stdout 
		
		The procedure is done when you see the line ``INFO`` ends with ``Entering CheckForRepositoriesUpdates->terminate()``

	11. Create OS profile based on packages (minimal, server, etc.)::

		$ /opt/UShareSoft/uforge/bin/distro_sorter.sh -d Ubuntu -v 10.04 -a x86_64
