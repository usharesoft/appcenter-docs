.. Copyright 2016 FUJITSU LIMITED

.. _backup-database:

UForge Databases Basic Backup
-----------------------------

UForge has three databases to store all its data, namely:

	* LDAP (OpenDJ) for storing user credential information
	* IDM (Syncope using MariaDB) for storing user entitlements and roles
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

LDAP (OpenDJ) has its own tool for doing backup, called ``backup``.  To ensure data consistency across the entire platform, we recommend you backup all the databases at the same time.  Here is an example of how to backup the MariaDB (holding IDM and UForge information) and LDAP databases.  Note, we are also stopping the web service instances, this ensures we do not generate connection error messages in the logs:

.. code-block:: shell

	$ service tomcat stop
	$ service mysql stop
	$ rsync -a --delete-before /var/lib/mysql /tmp/dir_to_backup/mysql
	$ /opt/OpenDJ/bin/backup -a -c -d /tmp/dir_to_backup/ldap
	$ rsync -a --delete-before /tmp/dir_to_backup/* root@/tmp/dir_to_backup/
	$ service mysql start
	$ service tomcat start

As the backup destination does not change, you are creating a replication of the entire database.  The rsync command only copies the incremental differences each time.  

The danger here is that if during that time there is damaged data, when rsync is run then this corrupted data is copied and there is no possible way to recuperate the old data. To overcome this, we also create archive backups of the entire database.

.. code-block:: shell

	$ service tomcat stop
	$ service mysql stop
	$ f=`date +%y%m%d`
	$ l=`echo "$f-ldap-backup.tgz"` #what to name ldap backups
	$ f=`echo "$f-mysql-backup.tgz"` #what to name backups
	$ tar -czf /tmp/$f /var/lib/mysql/*
	$ /opt/OpenDJ/bin/backup -a -c -d /tmp/ldap_backup
	$ tar -czf /tmp/$l /tmp/ldap_backup
	$ rsync -a /tmp/$f root@<BACKUP-DESTINATION>
	$ rsync -a /tmp/$l root@<BACKUP-DESTINATION>
	$ service mysql start
	$ service tomcat start

This only works if the database instance is stopped to ensure a consistent dump of the database. Otherwise you get a corrupt, inconsistent backup.

The issue with this method is if you have only one database instance, then you are effectively stopping your service to do the backup. To overcome this you need to use replication, for example master-slave.

.. note:: For LDAP, the service does not need to be stopped.

We recommend you use a mounted disk, SAN or NAS to store your backup archives.

.. _basic-restore:

Basic Restore
~~~~~~~~~~~~~

Restoring the database is a simple copy using rsync back to the database directory. Note the use of slashes (/ ) is important.  You should stop the web service to ensure we do not generate connection error messages in the logs.

.. code-block:: shell

	$ service tomcat stop
	$ service OpenDJ stop
	$ service mysql stop
	$ rsync -a --delete-before root@<BACKUP-DESTINATION>/<ldap tarball> /tmp
	$ tar -xvf /tmp/<ldap tarball>
	$ /opt/OpenDJ/bin/restore -d /tmp/<ldap dir>/userRoot
	$ /opt/OpenDJ/bin/restore -d /tmp/<ldap dir>/tasks
	$ /opt/OpenDJ/bin/restore -d /tmp/<ldap dir>/config
	$ /opt/OpenDJ/bin/restore -d /tmp/<ldap dir>/schema
	$ rsync -a --delete-before root@<BACKUP-DESTINATION>/mysql/ /var/lib/mysql 
	$ service OpenDJ start
	$ service mysql start
	$ service tomcat start

