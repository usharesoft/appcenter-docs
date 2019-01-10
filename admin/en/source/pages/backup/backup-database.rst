.. Copyright 2019 FUJITSU LIMITED

.. _backup-database:

UForge Databases Basic Backup
-----------------------------

UForge has four databases to store all its data, namely:

	* LDAP (OpenDJ) for storing user credential information
	* IDM (Syncope using MariaDB) for storing user entitlements and roles
	* Secret Manager (Vault) for storing user's secrets.
	* UForge (MariaDB) for storing everything else for UForge features.

MariaDB provides many different types of backup methods you can choose from, including:

	* Doing a hot backup (for example with Percona XtraBackup)
	* Copying Table files
	* Delimited-Text backups
	* Using the mysqldump or mysqlhotcopy commands
	* Creating incremental backups by enabling the binary log
	* Creating a backup from a slave
	* Making backups using a file system snapshot

For more details on all these back up strategies, refer to: `http://dev.mysql.com/doc/refman/5.5/en/backup-methods.html <http://dev.mysql.com/doc/refman/5.5/en/backup-methods.html>`_

MariaDB holds both UForge and IDM data. All this information is located under:

	``/var/lib/mysql``

By copying this information, you are taking a snapshot of the entire database.

The secret manager also saves secrets on the filesystem at ``/var/lib/vault`` and this folder must also be backed up on a regular basis.
This should be performed during a time frame where there is no user activity to ensure Vault data integrity.

.. note:: Vault and mysql must be backup synchronously to keep data integrity.


LDAP (OpenDJ) has its own tool for doing backup, called ``backup``.  To ensure data consistency across the entire platform, we recommend you backup all the databases at the same time.  Here is an example of how to back up the MariaDB (containing IDM and UForge information) and LDAP databases.  Note, we are also stopping the web service instances; this ensures we do not generate connection error messages in the logs:

.. code-block:: shell

	$ systemctl stop tomcat
	$ systemctl stop mysql
	$ systemctl stop vault
	$ f=$(date +%y%m%d)
	$ l="$f-ldap-backup.tgz" #what to name ldap backups
	$ m="$f-mysql-backup.tgz" #what to name mysql backups
	$ v="$f-vault-backup.tgz" #what to name vault backups
	$ tar -czf /tmp/$m /var/lib/mysql/*
	$ tar -czf /tmp/$v /var/lib/vault/*
	$ /opt/opendj/bin/backup -a -c -d /tmp/ldap_backup
	$ tar -czf /tmp/$l /tmp/ldap_backup
	$ systemctl start vault
	$ systemctl start mysql
	$ systemctl start tomcat

If using SAN mountpoint, add:

.. code-block:: shell

	$ rsync /tmp/$m /<SAN-MOUNTPOINT-BACKUP-DESTINATION>
	$ rsync /tmp/$l /<SAN-MOUNTPOINT-BACKUP-DESTINATION>
	$ rsync /tmp/$v /<SAN-MOUNTPOINT-BACKUP-DESTINATION>


If using remote backup, add:

.. code-block:: shell

	$ rsync /tmp/$m root@<BACKUP-DESTINATION>
	$ rsync /tmp/$l root@<BACKUP-DESTINATION>
	$ rsync /tmp/$v root@<BACKUP-DESTINATION>


.. warning:: This only works if the database instance is stopped to ensure a consistent dump of the database. Otherwise you get a corrupt, inconsistent backup.

The issue with this method is if you have only one database instance, then you are effectively stopping your service to do the backup. To overcome this you need to use replication, for example master-slave.

.. note:: For LDAP, the service does not need to be stopped.


.. _basic-restore:

Basic Restore
-------------

Restoring the database is a simple copy using rsync back to the database directory. Note the use of slashes (/ ) is important.  You should stop the web service to avoid creating connection error messages in the logs.

.. code-block:: shell

	$ systemctl stop tomcat
	$ systemctl stop opendj
	$ systemctl stop mysql
	$ systemctl stop vault
	$ cd /tmp
	$ tar -xvf /tmp/<ldap tarball>
	$ /opt/opendj/bin/restore -d /tmp/<ldap dir>/userRoot
	$ /opt/opendj/bin/restore -d /tmp/<ldap dir>/tasks
	$ /opt/opendj/bin/restore -d /tmp/<ldap dir>/config
	$ /opt/opendj/bin/restore -d /tmp/<ldap dir>/schema
	$ tar -xvf /tmp/<mysql tarball>
	$ tar -xvf /tmp/<vault tarball>
	$ rsync -a --delete-before /tmp/<mysql dir>/* /var/lib/mysql/
	$ rsync -a --delete-before /tmp/<vault dir>/* /var/lib/vault/
	$ systemctl start opendj
	$ systemctl start vault
	$ systemctl start mysql
	$ systemctl start tomcat



To restore the SAN mountpoint:

.. code-block:: shell

	$ rsync /<SAN-MOUNTPOINT-BACKUP-DESTINATION>/<ldap tarball> /tmp
	$ rsync /<SAN-MOUNTPOINT-BACKUP-DESTINATION>/<mysql tarball> /tmp
	$ rsync /<SAN-MOUNTPOINT-BACKUP-DESTINATION>/<vault tarball> /tmp


To restore remote backup:

.. code-block:: shell

	$ rsync root@<BACKUP-DESTINATION>/<ldap tarball> /tmp
	$ rsync root@<BACKUP-DESTINATION>/<mysql tarball> /tmp
	$ rsync root@<BACKUP-DESTINATION>/<vault tarball> /tmp
