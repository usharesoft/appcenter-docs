.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _set-oses:

Managing User Access to Operating Systems
----------------------------------------

Each user account can be configured to have access to certain operating systems and image formats that are enabled in the organization.  When a user account is created, the organization's default operating systems and image formats are automatically added.  The administrator can then add or remove operating systems and image formats for a specific user account using the command-line interface.

Listing Available OSes
~~~~~~~~~~~~~~~~~~~~~~

To list all the operating systems the user has access to::

	$ uforge user os list --account <username> -u $ADMIN -p $PASS

Adding or Removing User Access to OSes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

An administrator can add or remove access to operating systems for a specific user. 

	* Adding/removing all CentOS versions:: 

		uforge user os enable --account <username> --name CentOS
		uforge user os disable --account <username> --name CentOS

	* Adding/removing CentOS version 5.8 all architectures::

		uforge user os enable --account <username> --name CentOS --version 5.8
		uforge user os disable --account <username> --name CentOS --version 5.8

	* Adding/removing CentOS version 5.8 i386::

		uforge user os enable --account <username> --name CentOS --version 5.8 --arch i386
		uforge user os disable --account <username> --name CentOS --version 5.8 --arch i386

.. note:: For “Scientific Linux” and “RedHat Enterprise Linux”, use the following syntax : Scientific.* RedHat.* for the distribution name. 

