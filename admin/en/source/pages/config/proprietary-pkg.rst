.. Copyright 2016 FUJITSU LIMITED

.. _proprietary-pkg:

Hosting Proprietary Packages
----------------------------

.. note:: The use of self-signed certificate can comport security risks.

Proprietary packages, such as RedHat are not delivered as part of the UForge repository. You must have the original ISO images of the operating system in questions and follow the steps below.

For example, to add a RedHat repository:

	1. Mount the iso into /mnt (on the works node)

	2. Create the appropriate directory layout under /tmp/USER_DATA/repos/ for example: /tmp/USER_DATA/repos/RHEL/6.5/x86_64/

	3. Copy all the contents of the DVD into /tmp/USER_DATA/repos/RHEL/6.5/x86_64/
	
	4. If the repositories does not already contain a repodata folder, you must create it inside the package directory

	.. code-block:: shell

		# cd /tmp/USER_DATA/repos/RHEL/6.5/x86_64/
		# createrepo .

	5. Create the repository using the UForge CLI as follows::

		uforge org repo create --name "RHEL 6.5 os" --repoUrl "http://127.0.0.1/repos/RHEL/6.5/x86_64/" --type RPM -u $ADMIN -p $PASS

		The –-name specified here is the “tagname” that will be shown in the UI when creating an appliance.
		The --repoUrl can be either http:// 

	6. Attach repository to the distribution as follows::

		uforge org repo os attach --name RHEL --repoIds 954 -u $ADMIN -p $PASS

	7. Populate repository packages::

		/opt/UShareSoft/uforge/cron/update_repos_pkgs.sh

		This procedure may take a long time.

	8. To verify if the procedure is terminated, run the following command:

	.. code-block:: shell

		# tail -f /tmp/USER_DATA/FactoryContainer/logs/repos/spider/<directory name with date>/spider.stdout 
		
		The procedure is terminated when you see the line: // INFO  CheckForRepositoriesUpdates:275 - Entering CheckForRepositoriesUpdates->terminate()

	9. Create OS profile based on packages (minimal, server, etc.)::

		/opt/UShareSoft/uforge/bin/launch_distro_sorter.sh -a x86_64 -d RHEL -v 6.5

	10. Populate the packages for the new repository::

		ARCHS=x86_64 DEBUG=y COS_VERS=6.5 /opt/UShareSoft/uforge/bin/exec_uploads.sh -w UssPkgs -p <uforge port> -U $ADMIN -P $PASS /tmp/DISTROS/USS/usspkgs

