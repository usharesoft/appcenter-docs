.. Copyright 2016 FUJITSU LIMITED

.. _set-formats:

Managing Access to Formats and OSes
-----------------------------------

Each user account can be configured to have access to certain operating systems and image formats that are enabled in the organization.  When a user account is created, the organization's default operating systems and image formats are automatically added.  The administrator can then add or remove operating systems and image formats for a specific user account using the command-line interface.

Listing Formats
~~~~~~~~~~~~~~~

To list all the formats the user (in this example “kermit”) has access to:

.. code-block:: shell

	$ uforge user format list --account kermit --url https://uforge.usharesoft.com:443 -u $ADMIN -p $PASS
	Getting user [kermit] ...
	Success: User [kermit] can have access to the following image formats in the default organization
	+------------------+--------+ 
	| Format           | Access | 
	+------------------+--------+ 
	| abiquo           |   X    | 
	| ami              |   X    | 
	| cloudburstvmware |        | 
	| cloudcomova      |   X    | 
	| cloudcomqcow2    |   X    | 
	| cloudcomvhd      |   X    | 
	| cloudsigmaraw    |        | 
	| emi-kvm          |   X    | 
	| emi-xen          |   X    | 
	| esx              |   X    | 
	| hyper-v          |   X    | 
	| ISO              |   X    | 
	| kvm              |   X    | 
	| nimbulaesx       |   X    | 
	| nimbulakvm       |   X    | 
	| openstack        |   X    | 
	| ovf              |   X    | 
	| qcow2            |   X    | 
	| raw              |   X    | 
	| vbox             |   X    | 
	| vhd              |   X    | 
	| vmware           |   X    | 
	| xen              |   X    | 
	+------------------+--------+ 

Adding or Removing Formats
~~~~~~~~~~~~~~~~~~~~~~~~~~

To add access to one or more formats for a specific user, use the command uforge user format enable. You cannot add access to a format that is not included in the organization. For a list of formats that are part of the organization, use the command uforge org format list.

To disable access to one or more formats for a specific user  (in this example “kermit”):

.. code-block:: shell

	$ uforge user format disable --format ovf qcow2 vbox --account kermit --url https://uforge.usharesoft.com:443 -u $ADMIN -p $PASS
	Getting user [kermit] ...
	Success: Disabled 3 image formats for user [kermit] 
	Success: Disabled image formats: 
	+------------------+--------+ 
	| Format           | Access | 
	+------------------+--------+ 
	| ovf              |        | 
	| qcow2            |        | 
	| vbox             |        | 
	+------------------+--------+ 

Listing Available OSes
~~~~~~~~~~~~~~~~~~~~~~

To list all the operating systems the user has access to::

	$ uforge user os list --account <username> -u $ADMIN -p $PASS

Adding or Removing User Access to OSes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

An administrator can add or remove access to operating systems for a specific user. 

Adding/removing all CentOS versions::

	uforge user os enable --account <username> --name CentOS
	uforge user os disable --account <username> --name CentOS

Adding/removing CentOS version 5.8 all architectures::

	uforge user os enable --account <username> --name CentOS --version 5.8
	uforge user os disable --account <username> --name CentOS --version 5.8

Adding/removing CentOS version 5.8 i386::

	uforge user os enable --account <username> --name CentOS --version 5.8 --arch i386
	uforge user os disable --account <username> --name CentOS --version 5.8 --arch i386

.. note:: For “Scientific Linux” and “RedHat Enterprise Linux”, use the following syntax: Scientific.* RedHat.* for the distribution name. 
