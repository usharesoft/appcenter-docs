.. Copyright 2017 FUJITSU LIMITED

.. _uforge-supported-os-formats:

Supported Operating Systems
---------------------------

The following is a list of supported OSes that users can use as the guest operating system when creating their appliance templates.

+------------------+------------------------------------------+------------------------------------------+
| OS               | Factory                                  | Migration                                |
+==================+==========================================+==========================================+
| CentOS           | 5.2+ (32bit and 64bit), 6 (32bit         | 5.2+ (32bit and 64bit), 6 (32bit         |
|                  | 64bit), 7 (64bit)                        |                                          |
+------------------+------------------------------------------+------------------------------------------+
| Debian           | 6 (Squeeze), 7 (Wheezy), 8 (Jessie),     | 6 (Squeeze), 7 (Wheezy), 8 (Jessie),     |
|                  | 9 (Stretch) (32bit and 64bit)            | 9 (Stretch) (32bit and 64bit)            |
+------------------+------------------------------------------+------------------------------------------+
| Fedora           | 8 to 22                                  | 8 to 22                                  |
+------------------+------------------------------------------+------------------------------------------+
| SUSE Linux       | 11.3, 11.4 (32bit and 64bit)             | 11.3, 11.4 (32bit and 64bit)             |
| Enterprise Server| 12.1, 12.2, 12.3  (64bit)                | 12.1, 12.2, 12.3  (64bit)                |
+------------------+------------------------------------------+------------------------------------------+
| Open SUSE        | 11.3, 11.4 (32bit and 64bit)             | 11.3, 11.4 (32bit and 64bit)             |
|                  | 12.1, 12.2, 12.3  (64bit)                | 12.1, 12.2, 12.3  (64bit)                |
|                  | 42.1 42.2 42.3 (64 bit)                  | 42.1 42.2 42.3 (64 bit)                  |
+------------------+------------------------------------------+------------------------------------------+
| Red Hat          | 5.2+ (32bit and 64bit),                  | 5.2+ (32bit and 64bit),                  |
| Enterprise Linux*| 6 (32bit and 64bit), 7 (64bit)           | 6 (32bit and 64bit), 7 (64bit)           |
+------------------+------------------------------------------+------------------------------------------+
| Oracle Linux     | 5.2+ (32bit and 64bit), 6 (32bit and     | 5.2+ (32bit and 64bit), 6 (32bit and     |
|                  | 64bit), 7 (64bit)                        | 64bit), 7 (64bit)                        |
+------------------+------------------------------------------+------------------------------------------+
| Scientific Linux | 5.2+, 6 (32bit and 64bit), 7 (64bit)     | 5.2+, 6 (32bit and 64bit), 7 (64bit)     |
+------------------+------------------------------------------+------------------------------------------+
| Ubuntu LTS       | 10.04 (Lucid), 12.04 (Precise),          | 10.04 (Lucid), 12.04 (Precise),          |
|                  | 14.04 (Trusty), 16.04 (32bit and 64bit)  | 14.04 (Trusty), 16.04 (32bit and 64bit)  |
+------------------+------------------------------------------+------------------------------------------+
| Microsoft        | 2008R2, 2012, 2012R2, 2016               | 2008R2, 2012, 2012R2, 2016               |
| Windows Server   |                                          |                                          |
+------------------+------------------------------------------+------------------------------------------+

.. note:: For Red Hat Enterprise Linux you must provide the ISO images or access to a repository.

.. warning:: If you intend to generate machine images for cloud environments, ensure that the operating system you are using in the machine image is correctly supported by the cloud environment.  For example, Microsoft Azure supports the following `operating systems <https://azure.microsoft.com/en-us/documentation/articles/virtual-machines-linux-endorsed-distros/>`_.


.. _notes-on-licensing:

Notes on Licensing
~~~~~~~~~~~~~~~~~~

When using UForge, you have to comply with the license agreement of OSes and software which UForge handles, in particular:
	
	* Publishing OS image of RHEL (Red Hat Enterprise Linux) subscription to public cloud
		Cloud provider has to be CCSP (Certified Cloud & Service Provider) and you must register to Red Hat Cloud Access. For more details, please confirm with cloud provider.
	
	* Scanning server
		You have to check whether the licenses of OS and software which the source machine contains allow you to use them on the destination server which you are migrating to.
		
		If the source machine contains rpm packages which Red Hat provides, please ask the administrator whether UForge repository contains these packages, 
		because UForge automatically regenerates rpm packages which the repository doesn't contain and regenerated packages are NOT supported by Red Hat.
		
		On UForge Portal, you can see the list of rpm packages which the source machine contains 
		and header ``In Repo`` tells you whether or not the package comes from the repository (Refer to :ref:`migration-view-scan`).
		Once migration is done, you can see where the package comes from by rpm command on the destination server.
		If regenerated, ``Build Host`` is overwritten as ``uforge``.


	* Handling Microsoft Windows
		UForge user must acquire Windows license in order to handle Windows OSes in UForge. When publishing Windows OS image or scanning Windows server, you have to confirm usage conditions of cloud provider and virtualization software which you publish to or scan.



.. _supported-image-formats:

Supported Machine Image Types
-----------------------------

With UForge you can create machine images in the following formats.

+-------------------------------------+-------------------------------------------------------+
| Physical Format                     | Additional information                                |
+=====================================+=======================================================+
| ISO                                 | none                                                  |
+-------------------------------------+-------------------------------------------------------+
| PXE                                 | Only for CentOS systems                               |
+-------------------------------------+-------------------------------------------------------+

+-------------------------------------+-------------------------------------------------------+
| Virtual                             | Additional information                                |
+=====================================+=======================================================+
| Hyper-V                             | none                                                  |
+-------------------------------------+-------------------------------------------------------+
| KVM                                 | none                                                  |
+-------------------------------------+-------------------------------------------------------+
| OVF                                 | Supported hardware types:                             |
|                                     | 4 (ESXi >=3.x)                                        |
|                                     | 7 (ESXi >=4.x)                                        |
|                                     | 9 (ESXi >=5.x)                                        |
+-------------------------------------+-------------------------------------------------------+
| QCOW2                               | none                                                  |
+-------------------------------------+-------------------------------------------------------+
| Raw                                 | none                                                  |
+-------------------------------------+-------------------------------------------------------+
| tar.gz                              | none                                                  |
+-------------------------------------+-------------------------------------------------------+
| Vagrant Base Box                    | none                                                  |
+-------------------------------------+-------------------------------------------------------+
| VHD                                 | none                                                  |
+-------------------------------------+-------------------------------------------------------+
| Virtual Box                         | none                                                  |
+-------------------------------------+-------------------------------------------------------+
| VMware vCenter                      | Supported hardware types:                             |
|                                     | 4 (ESXi >=3.x)                                        |
|                                     | 7 (ESXi >=4.x)                                        |
|                                     | 9 (ESXi >=5.x)                                        |
|                                     | For Windows, ensure your HW version is the most up to |
|                                     | date for the ESXi host                                |
+-------------------------------------+-------------------------------------------------------+
| VMware Server                       | Supported hardware types:                             |
|                                     | 4 (ESXi >=3.x)                                        |
|                                     | 7 (ESXi >=4.x)                                        |
|                                     | 9 (ESXi >=5.x)                                        |
+-------------------------------------+-------------------------------------------------------+
| Vagrant                             | none                                                  |
+-------------------------------------+-------------------------------------------------------+
| Xen                                 | none                                                  |
+-------------------------------------+-------------------------------------------------------+
| Citrix XenServer                    | none                                                  |
+-------------------------------------+-------------------------------------------------------+

+-------------------------------------+-------------------------------------------------------+
| Container                           | Additional information                                |
+=====================================+=======================================================+
| Docker                              | none                                                  |
+-------------------------------------+-------------------------------------------------------+
| LXC                                 | none                                                  |
+-------------------------------------+-------------------------------------------------------+

+-------------------------------------+-------------------------------------------------------+
| Cloud                               | Additional information                                |
+=====================================+=======================================================+
| Abiquo                              | Supported hardware types:                             |
|                                     | 4 (ESXi >=3.x)                                        |
|                                     | 7 (ESXi >=4.x)                                        |
|                                     | 9 (ESXi >=5.x)                                        |
+-------------------------------------+-------------------------------------------------------+
| Amazon AWS                          | none                                                  |
+-------------------------------------+-------------------------------------------------------+
| Cloudstack                          | Target formats:                                       |
|                                     | CloudStack VMWare (OVA)                               |
|                                     | CloudStack Citrix Xen (VHD)                           |
|                                     | CloudStack KVM (QCOW2)                                |
+-------------------------------------+-------------------------------------------------------+
| Eucalyptus                          | Target formats:                                       |
|                                     | Eucalyptus KVM                                        |
|                                     | Eucalyptus Xen                                        |
+-------------------------------------+-------------------------------------------------------+
| Flexiant                            | Target formats:                                       |
|                                     | Flexiant RAW - KVM/Xen                                |
|                                     | Flexiant OVA - VMWare                                 |
|                                     | Flexiant QCOW2 - KVM/Xen/VMWare                       |
+-------------------------------------+-------------------------------------------------------+
| Fujitsu K5                          | Red Hat Enterprise Linux not supported                |
+-------------------------------------+-------------------------------------------------------+
| Google Compute Engine               | none                                                  |
+-------------------------------------+-------------------------------------------------------+
| Microsoft Azure                     | none                                                  |
+-------------------------------------+-------------------------------------------------------+
| Nimbula                             | Target formats:                                       |
|                                     | Nimbula ESX                                           |
|                                     | Nimbula KVM                                           |
+-------------------------------------+-------------------------------------------------------+
| OpenStack                           | Target formats:                                       |
|                                     | OpenStack QCOW2                                       |
|                                     | OpenStack VMDK                                        |
|                                     | OpenStack VDI                                         |
|                                     | OpenStack VHD                                         |
+-------------------------------------+-------------------------------------------------------+
| Oracle Cloud                        | - For OS versions supported by Oracle Cloud,          |
|                                     |   refer to `FAQ at Oracle Cloud                       |
|                                     |   <https://cloud.oracle.com/compute-classic/faq>`_    |
|                                     | - Debian 8 is not supported by UForge for publication |
|                                     |   to Oracle Cloud.                                    |
|                                     | - Supported subscriptions are                         |
|                                     |   Metered Service Offerings.                          |
|                                     |   Nonmetered Service Offerings are not supported by   |
|                                     |   UForge.                                             |
+-------------------------------------+-------------------------------------------------------+
| Outscale                            | none                                                  |
+-------------------------------------+-------------------------------------------------------+
| SUSE Cloud                          | none                                                  |
+-------------------------------------+-------------------------------------------------------+
| VMware vCloud Director              | Supported hardware types:                             |
|                                     | 4 (ESXi >=3.x)                                        |
|                                     | 7 (ESXi >=4.x)                                        |
|                                     | 9 (ESXi >=5.x)                                        |
+-------------------------------------+-------------------------------------------------------+
