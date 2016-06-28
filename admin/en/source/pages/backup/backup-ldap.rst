.. Copyright 2016 FUJITSU LIMITED

.. _backup-ldap:

LDAP Backup and Restore
-----------------------

You can backup your data without stopping the server using::

	/opt/OpenDJ/bin/backup -a -c -d /tmp/dir_to_backup

Note that the example above uses /tmp for the backup; however, we recommend you use a mounted disk, SAN or NAS to store your backup.

To restore the latest backup, you must first stop the LDAP service::

	service OpenDJ stop

Then run the restore:

.. code-block:: shell

	/opt/OpenDJ/bin/restore -d /tmp/dir_to_backup/userRoot
	/opt/OpenDJ/bin/restore -d /tmp/dir_to_backup/tasks
	/opt/OpenDJ/bin/restore -d /tmp/dir_to_backup/config
	/opt/OpenDJ/bin/restore -d /tmp/dir_to_backup/schema

To restart the LDAP service::

	service OpenDJ start
