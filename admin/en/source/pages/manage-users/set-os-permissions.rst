.. Copyright 2016-2019 FUJITSU LIMITED

.. _set-oses:

Managing User Access to Operating Systems
-----------------------------------------

Each user account can be configured to have access to certain operating systems and image formats that are enabled in the organization.  When a user account is created, the organization's default operating systems and image formats are automatically added, thanks to the subscription profile (refer to :ref:`subscription-profiles`).  The administrator can then add or remove operating systems and image formats for a specific user account using the command-line interface.

Listing Available OSes
~~~~~~~~~~~~~~~~~~~~~~

To list all the operating systems the user has access to::

	$ uforge user os list --account <username> -u $ADMIN -p $PASS

Allowing Access to OSes Using Subscription Profile
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

An administrator can modify access to OSes for a group of users using the subscription profile option ``--allusers``. For example if a group of users with a specific subscription profile is created but you decide you want to modify the operating systems available, then you can modify the subscription profile. In order to force the changes to apply to all users (even those already created), use the option ``--allusers``. 

.. code-block:: shell

	$ uforge subscription os add --name sub --os CentOS --version 6 --arch x86_64 --allusers -u $ADMIN -p $PASS

In the example above ``sub`` is the name of the subscription profile.


Adding or Removing Access to OSes for a Specific User
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

An administrator can add or remove access to operating systems for a specific user. 

	* Adding/removing all CentOS versions:: 

		$ uforge user os enable --account <username> --name CentOS
		$ uforge user os disable --account <username> --name CentOS

	* Adding/removing CentOS version 5.8 all architectures::

		$ uforge user os enable --account <username> --name CentOS --version 5.8
		$ uforge user os disable --account <username> --name CentOS --version 5.8

	* Adding/removing CentOS version 5.8 i386::

		$ uforge user os enable --account <username> --name CentOS --version 5.8 --arch i386
		$ uforge user os disable --account <username> --name CentOS --version 5.8 --arch i386

.. note:: For Scientific Linux and Red Hat Enterprise Linux, use the following syntax: ``Scientific.*`` and ``RedHat.*`` for the distribution name. 

