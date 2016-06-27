.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _update-java:

Updating the Java Version
-------------------------

The following procedure should be run on the web service and generation nodes of a single-node machine in order to update the Java version.

	1. Check that nothing is returned on web service node and gen nodes::

		oarstat

	2. Check that nothing is returned on gen nodes only::

		ps -ef | grep oar

	3. On the web service node, check the log to ensure that everything is out::

		tailf /var/log/tomcat/domain_uforge/uforge-web-service.log

	4. Stop the web service::

		service tomcat stop ;

	5. Now that nothing can happen on the web service side, you can shut down other services.

		* On the UI node(s)::

			service tomcat stop

		* On the LDAP node::

			service OpenDJ stop

	6. Check if the processes are stopped. Usually this is run on the DB node for the cron ``update_repos_pkgs.sh``::

		ps -ef | egrep -i 'java|spider'

	7. Launch update.::

		yum update jdk

	8. Restart the services.

		.. code-block:: shell

			# service OpenDJ start
			# service tomcat start
