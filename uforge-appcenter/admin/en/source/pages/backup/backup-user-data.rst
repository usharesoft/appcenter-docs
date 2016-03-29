.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _backup-user-data:

User Data Backup
----------------

UForge also stores information that is uploaded by the users of the platform. These are:

	* packages, binaries and files that are uploaded in ``My Software`` or ``Projects``
	* images (photos, appliance logos etc)
	* boot scripts
	* licenses (attached to projects and ``My Software``)
	* UForge Studio packages

All this information is stored in the following directory: /tmp/USER_DATA

Like the database, this is important information that must be backed up on a regular basis.  The same mechanism can be used for back up as the database, namely using rsync as highlighted in :ref:`backup-database`, or disk mirroring (RAID), or both.