.. Copyright 2017 FUJITSU LIMITED


.. _migrate-to38:

Migrating UForge from 3.7 to 3.8
--------------------------------

Before you start upgrading from UForge AppCenter version 3.7 to version 3.8, please note that the UForge root user password is now subject to restrictions. The UForge root user password must be 8 characters or more, contain at least 1 upper case letter, 1 lower case letter and 1 number. Characters - and _ are also allowed.

If your current UForge root user password matches those requirements, you do not need to make any changes. If your current UForge root user password does not match these requirements, you will have to change it in your UForge 3.7 AppCenter before starting migration.

A separate set of scripts and associated README.txt file is available on the `UShareSoft repository <http://https://repository.usharesoft.com/downloads/changePasswordScripts.tar.gz>`_.

	1. Deploy UForge 3.8 with the same topology as the original UForge 3.7 one to migrate, using the CentOS 7 UForge in a box ISO

		* Deploy without any OS and format
		* Use the same organisation name (UFORGE_DEFAULT_ORG_NAME info) as the one defined in ``/etc/UShareSoft/auth.conf on the <source_db>``
		* Use the same admin password (UFORGE_DB_ADMIN_PASSWORD info) as the one defined in ``/etc/UShareSoft/auth.conf on the <source_db>``

	2. On the <source_db> run the following commands:

	.. code-block:: shell

		# yum update -y uforge-common
		# yum update -y uforge-gen uforge uforge-cli uforge-client

	3. On the <source_ws> run the following commands:

	.. code-block:: shell 

		# yum update -y uforge-common
		# yum update -y uforge-gen uforge uforge-cli uforge-client
		# service tomcat stop

	4. On <source_db> run the following commands:

	.. code-block:: shell

		# service oar-server stop
		# service OpenDJ  stop
		# cd /tmp/USER_DATA
		# source /etc/UShareSoft/auth.conf
		# mysqldump -u${UFORGE_DB_ADMIN_LOGIN} -p${UFORGE_DB_ADMIN_PASSWORD} --routines --triggers --databases oar syncope uauthdb usharedb > db_backup_3.7.sql
		# /opt/OpenDJ/bin/export-ldif -l uforge-export.ldif -n userRoot
		# rsync  -avl -H -F --progress /tmp/USER_DATA/ root@<target_db>:/tmp/USER_DATA/

	5. On <target_db > run the following commands:

	.. code-block:: shell

		# systemctl stop oar-server
		# service opendj stop

	6. On <target_ws> run the following command:

	.. code-block:: shell

		# service tomcat stop

	7. On <target_db > run the following commands:

	.. code-block:: shell

		# source /etc/UShareSoft/auth.conf
		# echo "DROP DATABASE usharedb;" | mysql -u${UFORGE_DB_ADMIN_LOGIN} -p${UFORGE_DB_ADMIN_PASSWORD}
		# echo "DROP DATABASE oar;" | mysql -u${UFORGE_DB_ADMIN_LOGIN} -p${UFORGE_DB_ADMIN_PASSWORD}
		# echo "DROP DATABASE syncope;" | mysql -u${UFORGE_DB_ADMIN_LOGIN} -p${UFORGE_DB_ADMIN_PASSWORD}
		# echo "DROP DATABASE uauthdb;" | mysql -u${UFORGE_DB_ADMIN_LOGIN} -p${UFORGE_DB_ADMIN_PASSWORD}
		# cd /tmp/USER_DATA
		# mysql -u${UFORGE_DB_ADMIN_LOGIN} -p${UFORGE_DB_ADMIN_PASSWORD} < db_backup_3.7.sql
		# service mysql restart
		# oar-database --setup (answer y to the question)
		# /opt/opendj/bin/import-ldif -l uforge-export.ldif -n userRoot
		# systemctl start oar-server
		# service opendj start
		if ( <target_db> != <target_ws> )
			# /opt/UShareSoft/uforge/tools/update_scripts/uforge_update.sh 2>&1 | tee -a /tmp/USER_DATA/uforge_update_db_3.8.log
		fi

	8. On <target_ws> run the following commands:

	.. code-block:: shell

		# service tomcat start
		# /opt/UShareSoft/uforge/tools/update_scripts/uforge_update.sh 2>&1 | tee -a /tmp/USER_DATA/uforge_update_ws_3.8.log
		# rm /tmp/USER_DATA/db_backup_3.7.sql
		# rm /tmp/USER_DATA/uforge-export.ldif


