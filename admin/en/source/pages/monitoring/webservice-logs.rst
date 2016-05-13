.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _webservice-logs:

Viewing the Web Service Logs
----------------------------

All the web service logs can be found in the domain directory of the Tomcat application server. The web service uses the log4j logger.  You can change the log level of the web service resources for debugging purposes.  To view the logs:

Log in to the web service node as root:

.. code-block:: shell
  
  ssh root@<ip address of the node>
  cd /var/log/tomcat/
  tail -f catalina-daemon.out

To change the log level of the web service:

  1. Log in to the web service node as root

  .. code-block:: shell

    ssh root@<ip address of the node>

    cd /opt/Tomcat/webapps/ufws/WEB-INF/classes
    vi log4j.properties

  2. Update the logging level for each resource you wish by using the following keywords: ``info|warn|debug``

  3. Force Tomcat to reload

  .. code-block:: shell

    touch /opt/Tomcat/webapps/ufws/.reload

  4. Restart the Web Service

  .. code-block:: shell

    service tomcat restart

