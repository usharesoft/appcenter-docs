.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _master-slave-replication:

Using Master-Slave Replication for Database Backup
--------------------------------------------------

To ensure consistent backups of the data and to limit the impact of the actual backup process on the service performance, a common approach is to use Master-Slave replication.  This is an easy way to provide a complete running copy of the data on another database instance (called the slave).  Consequently you can then stop the slave instanceto do the backups while leaving the other instance (the master) to continue providing the database service.  Master-slave replication is also the first implementation of high-availability.

The configuration of master-slave replication is out of scope of this document, but we recommend the following reading:

	* `How to Set Up Replication, MySQL documentation <http://dev.mysql.com/doc/refman/5.7/en/replication-howto.html>`_
	* `High Availability MySQL Cookbook <http://www.packtpub.com/high-availability-mysql-cookbook/book>`_
	* `MySQL High Availability by O'Reilly <http://shop.oreilly.com/product/9780596807290.do>`_

You can now safely run the same commands provided in section :ref:`backup-database` on the slave database instance.

To automate the entire process, a script can be written and executed by a cron job at the frequency you wish to backup the database (nightly backups are recommended).

If you want to add high-availability, then UShareSoft recommends using MySQL Cluster. This is a separate MySQL product that is not distributed with UForge.

