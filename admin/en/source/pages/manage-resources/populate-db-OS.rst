.. Copyright 2018-2019 FUJITSU LIMITED

.. _populate-db-os:

Adding OS Distributions
=======================

Open source operating system versions are taken from the official repository mirror or the UForge repository cache. Proprietary operating systems such as Red Hat Enterprise Linux are not; therefore it is the responsibility of the end customer (or reseller if they have correct agreements in place to re-distribute an operating system) to have the original ISO images of the operating system in questions. Refer to :ref:`proprietary-pkg`.

To enable UForge to generate images based on the operating system it needs all the meta-data of the packages comprising the operating system. This meta-data includes the location in the storage of the package as well as dependency information that is used during generation. Furthermore, certain specific UForge packages must be populated for this operating system.

.. note:: Custom repositories are supported in UForge, only if ``Directory listings`` configuration is enabled. They are treated like other OS packages.

.. warning:: When using UForge, you have to comply with the license agreement of OSes and software which UForge handles, in particular:
	
	* Publishing OS image of RHEL (Red Hat Enterprise Linux) subscription to public cloud
		Cloud provider has to be CCSP (Certified Cloud & Service Provider) and you must register to Red Hat Cloud Access. For more details, please confirm with cloud provider.
	
	* Scanning server
		You have to check whether the licenses of OS and software which the source machine contains allow you to use them on the destination server which you are migrating to. If the source machine contains rpm packages which Red Hat provides, you must register repository with these rpm packages to UForge. Unless you register repository, UForge automatically regenerates rpm packages which the source machine contains, and regenerated packages are NOT supported by Red Hat.

	* Handling Microsoft Windows
		Refer to :ref:`windows-uforge`.

.. note:: When installing a major version, all minor versions will be included. If you want to restrict to only a few minor versions, you will have to follow this procedure for each minor version you want to install. You should note however, that a scan will take longer if not all minor versions of a distribution are install in your UForge AppCenter. For example, if you scan a CentOS 6.8 machine, but your AppCenter has only been populated with packages up to CentOS 6.7, then the AppCenter will use the machine's yum repo to download the missing packages. As a result, the scan will take longer before completing. 

.. warning:: If you are going to use the migration feature for RHEL or CentOS, you must add the major OS version to UForge AppCenter and attach to this major OS version all the repositories of the OS minor versions.

The steps for adding a distribution are described further on in :ref:`adding-os`.
For examples on adding a specific OS version using the CLI, refer to :ref:`populate-db-example`.