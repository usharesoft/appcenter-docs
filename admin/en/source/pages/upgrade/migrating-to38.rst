.. Copyright 2017 FUJITSU LIMITED


.. _migrate-to38:

Migrating UForge from 3.7 to 3.8
--------------------------------

Before you start upgrading from UForge AppCenter version 3.7 to version 3.8, please note that the UForge root user password is now subject to restrictions. The UForge root user password must be 8 characters or more, contain at least 1 upper case letter, 1 lower case letter and 1 number. Characters - and _ are also allowed.

If your current UForge root user password matches those requirements, you do not need to make any changes. If your current UForge root user password does not match these requirements, you will have to change it in your UForge 3.7 AppCenter before starting migration.

A separate set of scripts and associated README.txt file is available on the `UShareSoft repository <http://https://repository.usharesoft.com/downloads/changePasswordScripts.tar.gz>`_.

	#. Deploy UForge 3.8 with the same topology as the original UForge 3.7 one to migrate, using the CentOS 7 UForge in a box ISO

		* Deploy without any OS and format
		* Use the same organisation name (UFORGE_DEFAULT_ORG_NAME info) as the one defined in ``/etc/UShareSoft/auth.conf on the <source_db>``
		* Use the same admin password (UFORGE_DB_ADMIN_PASSWORD info) as the one defined in ``/etc/UShareSoft/auth.conf on the <source_db>``

	#. Upgrade your UForge to the latest 3.8 patch, for each node of the platform (if multi-node the following order should be respected: compute notes, db nodes, web service and UI nodes).
 
 	.. code-block:: shell
 
 		# yum update -y uforge-common
 		# yum update -y uforge-gen uforge uforge-cli uforge-client

 	#. To upgrade from UForge 3.8 to a 3.8.fpx, you have to do the following on each node composing the topology. The following order should be respected: compute notes, db nodes, web service and UI nodes:

 		a) Edit ``/etc/yum.repos.d/uforge-ee-centos.repo`` and update ``baseurl`` info replacing ``stable/3.8/official/centos/releases/$releasever/$basearch/`` by ``stable/latest/official/centos/releases/$releasever/$basearch/``.
		b) Run the following command on each node:

		.. code-block:: shell
 
	 		# yum update -y uforge-common
	 		# yum update -y uforge-gen uforge uforge-cli uforge-client

	#. The source UForge DB server has to be upgraded to the last 3.7 version. On the <source_db> run the following commands:

	.. code-block:: shell

		# yum update -y uforge-common
		# yum update -y uforge-gen uforge uforge-cli uforge-client

	#. The source UForge Web Service server has to be upgraded to the last 3.7 version. On the <source_ws> run the following commands:

	.. code-block:: shell 

		# yum update -y uforge-common
		# yum update -y uforge-gen uforge uforge-cli uforge-client
		# service tomcat stop

	#. Once both platforms are ready, on <source_db> run the following commands:

	.. code-block:: shell

		# service oar-server stop
		# service OpenDJ  stop
		# cd /tmp/USER_DATA
		# source /etc/UShareSoft/auth.conf
		# mysqldump -u${UFORGE_DB_ADMIN_LOGIN} -p${UFORGE_DB_ADMIN_PASSWORD} --routines --triggers --databases oar syncope uauthdb usharedb > db_backup_3.7.sql
		# /opt/OpenDJ/bin/export-ldif -l uforge-export.ldif -n userRoot
		# rsync  -avl -H -F --progress /tmp/USER_DATA/ root@<target_db>:/tmp/USER_DATA/

	#. Once the previous rsync command has finished oar-server and opendj services have to be stopped. On <target_db > run the following commands:

	.. code-block:: shell

		# systemctl stop oar-server
		# service opendj stop

	#. Once oar-server and opendj are stoppen you need to stop Tomcat. On <target_ws> run the following command:

	.. code-block:: shell

		# service tomcat stop

	#. The DB on <target_db> server has to be reset. Tun the following commands:

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

	#. Once the DB is reset, Tomcat has to be started. On <target_ws> run the following commands:

	.. code-block:: shell

		# service tomcat start
		# /opt/UShareSoft/uforge/tools/update_scripts/uforge_update.sh 2>&1 | tee -a /tmp/USER_DATA/uforge_update_ws_3.8.log
		# rm /tmp/USER_DATA/db_backup_3.7.sql
		# rm /tmp/USER_DATA/uforge-export.ldif

	#. If you have customized the UI you will need to follow these additional steps before migration to 3.8. This step applies to all the customization files in ``/var/opt/UShareSoft/uforge-client/gwt/uforge/templates`` (as decribed in), as well as ``config.xml``, ``forge-config.xml``, and css directory (in case of css customisation). Do the following on <target_ui>:

		a) rsync the customised files from the UI node of the source UForge AppCenter to the UI node of the target AppCenter.
		b) Edit file forge-config.xml, line

			.. code-block:: shell

			<c:uForgeUrl>http://10.2.1.11:8080/ufws/</c:uForgeUrl>

		c) Replace the old web service node IP address with the IP address of the new web service node.
		d) Launch the command 

			.. code-block:: shell

			/opt/UShareSoft/uforge-client/bin/uforge_ui_update.sh

	#. If you detect an issue, please contact support@usharesoft.com with the following files:

		* The standard output of the command
		* The result of running the ``ifconfig`` command
		* The ``/etc/hosts`` file
		* The name of the current node



