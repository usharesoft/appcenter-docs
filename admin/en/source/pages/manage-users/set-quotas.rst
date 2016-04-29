.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _set-quotas:

Setting Quotas
--------------

You can set a number of quotas for a user account using the command: ``uforge user quota modify``.

Setting quotas allows you to limit the user's access to UForge based on one (or several) of the following criteria:

	* number of appliances (includes imports and scans)
	* number of images generated (includes all image generations)
	* diskusage in bytes (includes storage of mysoftware uploads, bootscripts, image generations, scans)
	* number of scans for migration (includes initial scan and incremental scans)

.. note:: You can set the size of the Scan Overlay. This is done not through the CLI but using the uforge.conf file.  This is described in Setting the Overlay Limit.

You can set the quotas to refresh once a month using the argument ``--frequency``. You can set the frequency to: 

	* monthly: the quota counter will be reset every month. The day of the reset is based on the date of the user creation (and not the date when the limit is set). 
	* none: once the quota is reached it will not be reset automatically (it can however be increased manually).

Viewing the Quotas for a User
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can see the quotas set for a given user as follows::

	uforge user quota list --account <user> -u $ADMIN -p $PASS 

In the example above, the argument ``--user`` is the account of the administrator. The argument ``--account`` is the  user name of the account you want to view the quotas for.

Typically, when no limits are set, the results should be:

.. code-block:: shell

	$ uforge user quota list --account kermit -u $ADMIN -p $PASS
	Getting quotas for [kermit] ...
	List of quotas available for [kermit] :
	Scan (0)        --------------------UNLIMITED---------------------
	Template (0)    --------------------UNLIMITED---------------------
	Generation (0)  --------------------UNLIMITED---------------------
	Disk usage (0B) --------------------UNLIMITED---------------------

.. _set-quota-appliance:

Setting a Quota for Appliance
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can set a limit to the number of appliances a given user can have. This limit can be reset monthly. Note that if the user deletes an appliance, the count will go down. For example, if the user has reached the set limit of 10 appliances, the user can delete an appliance in order to create a new one and stay within the quota limit.

The option ``--type`` must be set to ``appliance``.
The option ``--limit`` determines the quota.

For example to set the quota of appliances to 10 per month::

	uforge user quota modify --user $ADMIN --password $PASS --account kermit --type appliance --limit 10 --frequency monthly

In the example above, the argument --user is the account of the administrator. The argument --account is the  user name of the account you want to view the quotas for.

.. _set-quota-image:

Setting a Quota for Image Generations
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can set a limit to the number of images a given user can generate. This limit can be reset monthly.

The option ``--type`` must be set to ``generation``.
The option ``--limit`` determines the quota.

For example to set the quota of images a user can generate to 10 per month::

	uforge user quota modify --user $ADMIN --password $PASS --account kermit --type generation --limit 10 --frequency monthly

.. _set-quota-scan:

Setting a Quota for Migration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can set a limit to number of scans a given user can run. This quota includes both scan generation and scan appliance generation. This limit can be reset monthly.

The option ``--type`` must be set to ``scan``.
The option ``--limit`` determines the quota. 

For example to set the number of scans the user can run to 5 per month::

	uforge user quota modify --user $ADMIN --password $PASS --account kermit --type scan --limit 5 --frequency monthly

.. _set-quota-overlay:

Setting the Overlay Limit
~~~~~~~~~~~~~~~~~~~~~~~~~

You can set the maximum size of the scan overlay. The overlay includes all the files in MySoftware and all other non-native files. This limit is set in the uforge.conf file. You must add the parameter::

	UFORGE_SCAN_OVERLAY_MAX_SIZE = maximum size in octets

For example, to set the limit de 10G (10 x 1024 x 1024 x 1024)::

	UFORGE_SCAN_OVERLAY_MAX_SIZE=10737418240

.. _set-quota-size:

Setting a Quota for Disk Usage
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can set a limit to the disk space a user can use. Disk space usage includes: mysoftware uploads, bootscripts, images generations, scans etc.

The option ``--type`` must be set to diskusage
The option ``--limit`` determines the quota in bytes. For disk usage, the quota is expressed in bytes. 
For example to set the disk space quota a user can use to 10Gb per month::

	uforge user quota modify --user $ADMIN --account user --type diskusage --limit 10737418240 --password $PASS

The results should be:

.. code-block:: shell

	uforge user quota list --user $ADMIN --account <username> --password $PASS
	Getting user [user] ...

	+------------------+--------------+------------+------------+-------------------------------+
	| Type             |     Consumed |      Limit | Frequency  | Renewal date                  |
	+------------------+--------------+------------+------------+-------------------------------+
	| appliance        |            1 |  unlimited |            | -                             |
	| diskusage        |          0.0 |      10 GB |            | -                             |
	| generation       |            0 |  unlimited |            | -                             |
	| scan             |            0 |  unlimited |            | -                             |
	+------------------+--------------+------------+------------+-------------------------------+
	Found 4 formats

.. _reset-quota:

Resetting Quotas
~~~~~~~~~~~~~~~~

If you want to remove a quota set on a user, you can do this using the ``--unlimited`` flag.
For example, to remove a quota limit you might have set on the number of scans for a user, run::

	uforge user quota modify --user $ADMIN --account user --type scan --unlimited --password $PASS
