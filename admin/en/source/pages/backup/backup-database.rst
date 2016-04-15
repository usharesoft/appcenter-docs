.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _backup-database:

UForge Database Basic Backup
----------------------------

UForge uses the MariaDB database to store all its data. PerconaDB provides many different types of backup methods you can choose from, including:

	* Doing a hot backup (for example with Percona XtraBackup)
	* Copying Table files
	* Delimited-Text backups
	* Using the mysqldump or mysqlhotcopy commands
	* Creating incremental backups by enabling the binary log
	* Creating a backup from a slave
	* Making backups using a file system snapshot

For more details on all these back up strategies, refer to: `http://dev.mysql.com/doc/refman/5.5/en/backup-methods.html <http://dev.mysql.com/doc/refman/5.5/en/backup-methods.html>`_

UShareSoft uses two methods for copying the database information. All the database information is located under:
/var/lib/mysql

By copying this information, you are taking a snapshot of the entire database. The first uses the rsync command to copy the current latest information of the database to another location.

.. code-block:: shell

	# service mysql stop
	# rsync -a --delete-before /var/lib/mysql root@<BACKUP-DESTINATION>
	# service mysql start

As the backup destination does not change, you are creating a replication of the entire database.  The rsync command only copies the incremental differences each time.  

The danger here is that if during that time there is damaged data, when rsync is run then this corrupted data is copied and there is no possible way to recuperate the old data. To overcome this, UShareSoft also creates archive backups of the entire database.

.. code-block:: shell

	# service mysql stop
	# f=`date +%y%m%d`
	# f=`echo "$f-mysql-backup.tgz"` #what to name backups
	# tar -czf /tmp/$f /var/lib/mysql/*
	# rsync -a /tmp/$f root@<BACKUP-DESTINATION>
	# service mysql start

This only works if the database instance is stopped to ensure a consistent dump of the database. Otherwise you get a corrupt, inconsistent backup.

The issue with this method is if you have only one database instance, then you are effectively stopping your service to do the backup. To overcome this you need to use replication, for example master-slave.

Basic Restore
-------------

Restoring the database is a simple copy using rsync back to the database directory. Note the use of slashes (/ ) is important.

.. code-block:: shell

	# service mysql stop
	# rsync -a --delete-before root@<BACKUP-DESTINATION>/mysql/ /var/lib/mysql 
	# service mysql start

Using Master-Slave Replication for Database Backup
--------------------------------------------------

To ensure consistent backups of the data and to limit the impact of the actual backup process on the service performance, a common approach is to use Master-Slave replication.  This is an easy way to provide a complete running copy of the data on another database instance (called the slave).  Consequently you can then stop the slave instanceto do the backups while leaving the other instance (the master) to continue providing the database service.  Master-slave replication is also the first implementation of high-availability.

The configuration of master-slave replication is out of scope of this document, but we recommend the following reading:

	* `How to Set Up Replication, MySQL documentation <http://dev.mysql.com/doc/refman/5.7/en/replication-howto.html>`_
	* `High Availability MySQL Cookbook <http://www.packtpub.com/high-availability-mysql-cookbook/book>`_
	* `MySQL High Availability by O'Reilly <http://shop.oreilly.com/product/9780596807290.do>`_

You can now safely run the same commands provided in section “Doing a Basic Backup” on the slave database instance.
To automate the entire process, a script can be written and executed by a cron job at the frequency you wish to backup the database (nightly backups are recommended).

If you want to add high-availability, then UShareSoft recommends using MySQL Cluster. This is a separate MySQL product that is not distributed with UForge.

