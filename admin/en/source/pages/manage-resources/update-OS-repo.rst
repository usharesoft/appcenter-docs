.. Copyright 2019 FUJITSU LIMITED

.. _update-os-repo:

Updating an OS Repository
-------------------------

This procedure assumes that you have already populated an OS repository as described in :ref:`populate-db-os`.

The following section gives an example for updating CentOS. They can be adjusted for your particular version, and are applicable to OpenSUSE, RedHat Enterprise Linux and Scientific Linux.


1. Create the distribution repository. 

	For example, for the CentOS 6.5 repository:

		.. code-block:: shell

			$ uforge org repo create --name "CentOS 6.5 os" --repoUrl http://vault.centos.org/6.5/os/x86_64/ --type RPM --coreRepository -u $ADMIN -p $PASS

			Success: Created repository with url [http://vault.centos.org/6.5/os/x86_64/] to default organization

		The ``--name`` specified here is the “tagname” that will be shown in the UI when creating an appliance.
		The ``--repoUrl`` can be either ``http://`` or ``file://``.

		.. warning:: You must use the ``--coreRepository`` flag for all the default repositories of officially supported OSes. For a list of supported OSes, refer to the User Guide. Do not use ``--coreRepository`` for repositories that are not part of the core distribution, such as epel or VMware tools. When generating a machine image, packages tagged as ``--coreRepository`` are installed first, before other packages.

2. Attach repository to the distribution as follows for each repository (your own repository and the UShareSoft tool repository)::

	$ uforge org repo os attach --name CentOS --arch x86_64 --version 6.5 --repoIds 354 -u $ADMIN -p $PASS
	
   The ``--repoIds`` specified here are the space-separated “id” of previously created repositories, shown by command ``uforge org repo list -u $ADMIN -p $PASS``.

3. Populate repository packages:

	.. code-block:: shell

		$ /opt/UShareSoft/uforge/cron/update_repos_pkgs.sh

	.. note:: This procedure may take a long time.

4. To verify if the procedure is terminated, run the following command:

	.. code-block:: shell

		$ tail -f /tmp/USER_DATA/FactoryContainer/logs/repos/spider/<directory name with date>/spider.stdout 
		
The procedure is complete when you see the line ``INFO`` ends with ``Entering CheckForRepositoriesUpdates->terminate()``

.. _delete-os-repo:

Deleting an OS Repository
-------------------------

If you want to remove an OS repository from your UForge AppCenter, you will need to run ``org repo delete`` as follows:

1. You will need to identify the ID number associated with the repo you want to delete. Run::

	org repo list

2. Delete the repository by running the ``org repo delete`` with the argument ``--id`` indicating the repo to be deleted. For example::

	org repo delete --ids 127
