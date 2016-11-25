.. Copyright 2016 FUJITSU LIMITED

.. _uforge-supported-os-formats:

Supported Operating Systems
---------------------------

The following is a list of supported OSes that users can use as the guest operating system when creating their appliance templates.

+------------------+------------------------------------------+------------------------------------------+
| OS               | Factory                                  | Migration                                |
+==================+==========================================+==========================================+
| CentOS           | 5.2+, 6 (32bit and 64bit), 7 (64bit)     | 5.2+, 6 (32bit and 64bit), 7 (64bit)     |
+------------------+------------------------------------------+------------------------------------------+
| Debian           | 6 (Squeeze), 7 (Wheezy), 8 (Jessie)      | 6 (Squeeze), 7 (Wheezy), 8 (Jessie)      |
|                  | (32bit and 64bit)                        | (32bit and 64bit)                        |
+------------------+------------------------------------------+------------------------------------------+
| Fedora           | 8 to 22                                  | 8 to 22                                  |
+------------------+------------------------------------------+------------------------------------------+
| Open SUSE        | 11.3, 11.4, 12.1, 12.2 (32bit and 64bit) | 11.3, 11.4, 12.1, 12.2 (32bit and 64bit) |
+------------------+------------------------------------------+------------------------------------------+
| Pidora           | 18 to 21                                 | Not Supported                            |
+------------------+------------------------------------------+------------------------------------------+
| Raspbian         | 7                                        | Not Supported                            |
+------------------+------------------------------------------+------------------------------------------+
| Red Hat          |                                          |                                          |
| Enterprise Linux*| 5.2+, 6 (32bit and 64bit), 7 (64bit)     | 5.2+, 6 (32bit and 64bit), 7 (64bit)     |
+------------------+------------------------------------------+------------------------------------------+
| Scientific Linux | 5.2+, 6 (32bit and 64bit), 7 (64bit)     | 5.2+, 6 (32bit and 64bit), 7 (64bit)     |
+------------------+------------------------------------------+------------------------------------------+
| Ubuntu LTS       | 10.04 (Lucid), 12.04 (Precise),          | 10.04 (Lucid), 12.04 (Precise),          |
|                  | 14.04 (Trusty) (32bit and 64bit)         | 14.04 (Trusty) (32bit and 64bit)         |
+------------------+------------------------------------------+------------------------------------------+
| Microsoft        | 2008R2, 2012, 2012R2                     | 2008R2, 2012, 2012R2                     |
| Windows Server   |                                          |                                          |
+------------------+------------------------------------------+------------------------------------------+

.. note:: For Red Hat Enterprise Linux you must provide the ISO images or access to a repository.

.. warning:: If you intend to generate machine images for cloud environments, ensure that the operating system you are using in the machine image is correctly supported by the cloud environment.  For example, Microsoft Azure supports the following `operating systems <https://docs.microsoft.com/en-us/azure/virtual-machines/virtual-machines-linux-endorsed-distros?toc=%2fazure%2fvirtual-machines%2flinux%2ftoc.json/>`_.

.. _supported-image-formats:

Supported Machine Image Types
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The following machine image formats are supported:

	* Physical: ISO
	* Virtual: Hyper-V, KVM, LXC, OVF, QCOW2, Raw, tar.gz, Vagrant Base Box, VHD, VirtualBox, VMWare vCenter, VMware Server, Vagrant, Xen, Citrix XenServer
	* Cloud: Abiquo, Amazon AWS, CloudStack, Cloudwatt, Eucalyptus, Flexiant, Google Compute Engine, Microsoft Azure, Nimbula, OpenStack, SUSE Cloud, VMware vCloud Director

