.. Copyright 2018 FUJITSU LIMITED

.. _migration-prereq:

Migration Pre-requisites
------------------------

In order to migrate a system, it must meet the following conditions:

	* The operating system must be in one of the supported formats (refer to :ref:`uforge-supported-os-formats`). 

	.. note:: Your scan will take longer if not all minor versions of a distribution are install in your UForge AppCenter. For example, if you scan a CentOS 6.8 machine, but your AppCenter has only been populated with packages up to CentOS 6.7, then the AppCenter will use the machine's yum repo to download the missing packages. As a result, the scan will take longer to complete.

	* The image formats must be in supported formats (refer to :ref:`supported-image-formats`)
	* For Windows, the partition format must be NTFS
	* For Windows, GPT is not supported.  Scanned Windows machine has to have MBR.