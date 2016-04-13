.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _backup-idm:

IDM Service Backup and Restore
------------------------------

UForge uses Syncope for identity management. Note that the following example uses /tmp for the backup; however, we recommend you use a mounted disk, SAN or NAS to store your backup.

To Backup Syncope
~~~~~~~~~~~~~~~~~

1. Set the environment variables::

	source /etc/UShareSoft/uforge/uforge.conf 

2. Backup the syncope database as follows: 

	.. code-block:: shell

		curl --noproxy idm-server -o /tmp/content.xml -u $UFORGE_IDM_ADMIN:$UFORGE_IDM_ADMIN_PWD -H "Content-Type: application/xml" -X GET http://idm-server:$UFORGE_IDM_PORT/$UFORGE_IDM_BASEURI/configurations/stream -D /tmp/headerscat

3. You can verify the backup was created as follows: 

	.. code-block:: shell

		ls -lrt /tmp/content.xml 
		-rw-r--r-- 1 root root 89875 Dec  9 16:09 /tmp/content.xml 

To Restore the IDM Data
~~~~~~~~~~~~~~~~~~~~~~~

1. Make sure you “drop” the syncope database (ensure that it is scrubbed clean)


	.. code-block:: shell

		export MYSQLCMD="mysql -s -u$UFORGE_DB_LOGIN -p$UFORGE_DB_PASSWORD"
		echo "DROP DATABASE IF EXISTS syncope;" | $MYSQLCMD

2. Recreate an empty syncope database::

	echo "CREATE DATABASE syncope CHARACTER SET utf8 COLLATE utf8_bin;" | $MYSQLCMD

3. Stop the webservice.

	.. code-block:: shell

		service glassfish stop
		Running stop glassfish domain syncope:                     [  OK  ]
		Running stop glassfish domain uforge:                      [  OK  ]

4. Copy the backup to the restore path::

	scp /tmp/content.xml root@idm-server:/opt/GlassFish/glassfish/domains/syncope/applications/syncope/WEB-INF/classes/content.xml

5. Start the Webservices (IDM & UForge)

	.. code-block:: shell

		service glassfish start
		Running start glassfish domain syncope:                    [  OK  ]
		Running start glassfish domain uforge:                     [  OK  ]

6. Send reconciliation task to synchronize the new Syncope database with the UForge LDAP database:

	.. code-block:: shell

		source /etc/UShareSoft/uforge/uforge.conf
		curl --noproxy idm-server -u $UFORGE_IDM_ADMIN:$UFORGE_IDM_ADMIN_PWD -H "Content-Type: application/xml" -X POST http://idm-server:$UFORGE_IDM_PORT/$UFORGE_IDM_BASEURI/tasks/{100}/execute -D /tmp/headers

7. When the reconciliation task has completed the service should be restored and functional.
You can check the reconciliation task has completed successfully:

	.. code-block:: shell

		curl --noproxy idm-server -u $UFORGE_IDM_ADMIN:$UFORGE_IDM_ADMIN_PWD -H "Content-Type: application/xml" -X GET http://idm-server:$UFORGE_IDM_PORT/$UFORGE_IDM_BASEURI/tasks/sync/100 | grep "<latestExecStatus>SUCCESS</latestExecStatus>"
		  % Total    % Received % Xferd  Average Speed   Time Time     Time Current
		                                 Dload  Upload   Total Spent    Left  Speed
		100  5312  100  5312    0 <latestExecStatus>SUCCESS</latestExecStatus> 0
		  0   205k      0 --:--:-- --:--:-- --:--:--  235k

8. Then run:

	.. code-block:: shell

		curl --noproxy idm-server -u $UFORGE_IDM_ADMIN:$UFORGE_IDM_ADMIN_PWD -H "Content-Type: application/xml" -X POST http://idm-server:$UFORGE_IDM_PORT/$UFORGE_IDM_BASEURI/tasks/{250}/execute -D /tmp/headers

9. Then run:

	.. code-block:: shell

		curl --noproxy idm-server -u $UFORGE_IDM_ADMIN:$UFORGE_IDM_ADMIN_PWD -H "Content-Type: application/xml" -X GET http://idm-server:$UFORGE_IDM_PORT/$UFORGE_IDM_BASEURI/tasks/sync/250 | grep "<latestExecStatus>SUCCESS</latestExecStatus>"
