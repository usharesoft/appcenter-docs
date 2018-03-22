.. Copyright 2018 FUJITSU LIMITED

.. _backup-user-data:

User Data Backup
----------------

UForge also stores information that is uploaded by the users of the platform. These are:

	* packages, binaries and files that are uploaded in ``My Software`` or ``Projects``
	* images (photos, appliance logos etc)
	* boot scripts
	* licenses (attached to projects or My Software)

All this information is stored in the following directory: ``/tmp/USER_DATA``

Like the database, this is important information that must be backed up on a regular basis.  The same mechanism can be used for back up as the database, namely using rsync as highlighted in :ref:`backup-database`.

You do not need to stop the service, but the danger is that if during that time there is damaged data, when rsync is run then this corrupted data is copied and there is no possible way to recuperate the old data.

The time it will take to back up the data will depend on the size of your data and the connection between the two servers.

The secret manager is also saving secrets on the filesystem at ``/var/lib/vault`` and this folder must also be backed up on a regular basis.
