.. Copyright 2018 FUJITSU LIMITED

.. _migration-prereq:

Migration Pre-requisites
------------------------

You must have root access on the target system in order to complete a migration, as you will need to copy and run a binary file on the target system.

.. warning:: UForge AppCenter migration does not support multi-kernels. When scanning a machine with more than one kernel, only the kernel running will be scanned and imported.

In order to migrate a system, it must meet the following conditions:

	* The operating system must be in one of the supported formats (refer to :ref:`uforge-supported-os-formats`). 

	.. note:: Your scan will take longer if not all minor versions of a distribution are install in your UForge AppCenter. For example, if you scan a CentOS 6.8 machine, but your AppCenter has only been populated with packages up to CentOS 6.7, then the AppCenter will use the machine's yum repo to download the missing packages. As a result, the scan will take longer to complete.

	* The image formats must be in supported formats (refer to :ref:`supported-image-formats`)
	* Any pre-install or post-install scripts on the system you are about to scan should only use ascii characters. Otherwise UForge AppCenter will return a scan error: ``DB Error – invalid characters``.
	* Custom packages on the live system to be scanned should not contain references to package dependencies as relative path. They should be expressed as absolute paths.
	* If custom packages are installed using ``--nodeps`` flag, the scan process will not detect these packages. When running ``RE-platform``, UForge AppCenter will check for these dependencies. If they are custom packages that are not on the live system, the generation will fail. Therefore, it is recommended to provide a custom repository with all the necessary custom packages. Otherwise, they can be added after the scan to the appliance template in ``My software``.
	* For Windows, the partition format must be NTFS
	* For Windows, GPT is not supported.  Scanned Windows machine has to have MBR.


.. warning:: Currently, UForge is not able to migrate the Yum repository GPG keys. This means that the user will have to accept the repository GPG key when the user installs or updates a package. The user will have to do this only once per repository.

.. note:: If you plan to migrate a Windows instance onto `K5 Fujitsu Public Cloud <http://www.fujitsu.com/global/solutions/cloud/k5/>`_, you must also uninstall CloudBase-Init (if installed) before scanning.

	For more detailed information, refer to `official Fujitsu K5 IaaS Documentation <http://www.fujitsu.com/uk/Images/k5-iaas-features-handbook.pdf>`_.

.. note:: Currently, to publish to Microsoft Azure platform `<https://azure.microsoft.com/en-us/>`_ you must do the following before scanning:

	1. Uninstall NetworkManager, which is not compatible with Azure (if installed).
	2. Uninstall the Microsoft Azure agent, i.e. WALinuxAgent and waagent packages (if installed).

.. warning:: Ubuntu 14.04 migration for Microsoft Azure target platform is not supported by UForge.