.. Copyright 2018 FUJITSU LIMITED

.. _backup-overview:

Backup Overview Guidelines
==========================

.. warning:: Fujitsu is not responsible for any customer data loss.  The database backup techniques highlighted in this document are standard best practices used by the industry.

There are two zones of UForge data that should be backed up:

	* UForge database service.
	* UForge user data (user uploaded software etc)

Database replication and backup are sometimes confused as achieving the same goal.  Many people believe that by having replication, the data within the database is being stored elsewhere and therefore in the event of a serious problem, the data can be recovered. However, with replication, any accidental changes or deletions are also replicated to the other systems.

Database replication is meant for high-availability of your service, in other words building a redundant database service.  If a problem occurs with one database instance, then having a second database with the data replicated, this instance can continue providing the database service (even if the service is degraded).  

Database backup is used to take a snapshot of the database data (either a complete or incremental snapshot) and storing this information in an archive.

When thinking about your database strategy, you should consider the following goals:

	* The backup should be an internally consistent snapshot (this may seem obvious, but if you do not lock the database or turn the database off before doing the snapshot then the data may be inconsistent).
	* Keep the service running during the backup (in production systems this will be mandatory, however for less-critical platforms this may not be a necessary goal)
	* Make the backup automated (via cron or using some 3rd party tools)
