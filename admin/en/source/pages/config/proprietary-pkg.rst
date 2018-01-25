.. Copyright 2018 FUJITSU LIMITED

.. _proprietary-pkg:

Hosting Proprietary Packages
----------------------------

Proprietary packages, such as Red Hat Enterprise Linux are not delivered as part of the UForge repository. You must have the original ISO images of the operating system in question and follow the steps below.

.. warning:: If you populate UForge AppCenter with Red Hat Enterprise Linux using an ISO, only the package versions in the ISO image will be known to UForge AppCenter. If you later scan a Red Hat Enterprise Linux machine with package versions more recent than those of the ISO, the scan will succeed, but will be extremely inefficient since all packages will have to be rebuilt. Therefore, if you have access to a Red Hat Satellite, then adding the Red Hat Enterprise Linux repository exposed by the Red Hat Satellite is a better option.

To add a Red Hat repository using your ISO:

	1. Mount the iso into ``/mnt`` (on the works node)

	2. Create the appropriate directory layout under ``/tmp/USER_DATA/repos/`` for example: ``/tmp/USER_DATA/repos/RHEL/6.5/x86_64/``

	3. Copy all the content of the DVD into ``/tmp/USER_DATA/repos/RHEL/6.5/x86_64/`` using the ``rsync -a`` command.
	
	4. If the repository does not already contain a repodata folder, you must create it inside the package directory:

	.. code-block:: shell

		$ cd /tmp/USER_DATA/repos/RHEL/6.5/x86_64/
		$ createrepo .	

	5. Create a file in ``/etc/httpd/conf.d`` called ``repos.conf``. The file should contain the following:

	.. code-block:: shell

		Alias /repos /tmp/USER_DATA/repos

		<Directory /tmp/USER_DATA/repos>
		    Options +Indexes
		</Directory>

	6. Run the following from the command line:

	.. code-block:: shell

		service httpd restart

	7. You must now populate the Red Hat Enterprise Linux repository, as describred in :ref:`populate-rhel`.
