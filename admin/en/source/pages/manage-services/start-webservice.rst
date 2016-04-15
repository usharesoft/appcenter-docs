.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _start-webservice:

Starting and Stopping the Application Server
--------------------------------------------

Tomcat is registered as an operating system service. Each time a web service node is rebooted, the application server is restarted automatically as part of the node boot sequence. To manually stop or start the web service you must be the unix root user of the node.

Stopping the web service
~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: shell

  # service tomcat stop

Starting the web service
~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: shell

  # service tomcat start

Restarting the web service
~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: shell

  # service tomcat restart
