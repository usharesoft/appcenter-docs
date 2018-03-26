.. Copyright 2018 FUJITSU LIMITED

.. _proprietary-pkg:

Hosting Proprietary Packages
----------------------------

Proprietary packages, such as Red Hat Enterprise Linux are not delivered as part of the UForge repository. You have several options possible in order to create a repository:

	* Create a Red Hat Satellite or SUSE Manager
	* Create a local mirror (refer to :ref:`redhat-mirror`)
	* Install the packages from an ISO image (refer to :ref:`rh-iso`).


.. _redhat-mirror:

Creating a Local Mirror for Red Hat Without Using a Satellite Server
--------------------------------------------------------------------

You can create a local mirror of the latest updates for Red Hat Enterprise Linux without using a satellite server. How this is set up will depend on your version of Red Hat Enterprise Linux.

You can also refer to the Red Hat Knowledgebase solutions:
	* `Migrating from RHN to RHSM in Red Hat Enterprise Linux <https://access.redhat.com/solutions/129723>`_.
	* `How to register and subscribe a system to the Red Hat Customer Portal using Red Hat Subscription-Manager <https://access.redhat.com/solutions/253273>`_.

Red Hat 5 and 6
~~~~~~~~~~~~~~~

1. Install Red Hat Enterprise Linux 5.0 or 6.0.

2. Register the RH system running and register the system::

	rhn_register command

3. Migrate your subscription tool, RHN to RHSM, execute the following two commands:

.. code-block:: shell

	yum install subscription-manager-migration subscription-manager-migration-data
	rhn-migrate-classic-to-rhsm

4. Install your web server::

	yum install httpd
 
5. Create ``/var/www/html/RHEL/6/X86_64/``.
6. Open port ``80``.

7. Create a local mirror following the procedure described on the `Red Hat Knowledgebase <https://access.redhat.com/solutions/23016>`_.

8. Add Red Hat Enterprise Linux to your AppCenter. For detailed instructions, refer to :ref:`populate-rhel`.

Red Hat 7
~~~~~~~~~

1. Install Red Hat Enterprise Linux 7.0 as any other installation.

2. Register and subscribe your system to the Red Hat Customer Portal using Red Hat Subscription-Manager. Run the subscription manager with the RH Custom credential::

    subscription-manager register –username –password –auto-attach

3. Install your web server::

	yum install httpd

4. Create ``/var/www/html/RHEL/6/X86_64/``.

5. Open port ``80``.

6. Create a local mirror following the procedure described on the `Red Hat Knowledgebase <https://access.redhat.com/solutions/23016>`_.

7. Add Red Hat Enterprise Linux to your AppCenter. For detailed instructions, refer to :ref:`populate-rhel`.

.. _rh-iso:

Installing Proprietary Packages from ISO
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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
