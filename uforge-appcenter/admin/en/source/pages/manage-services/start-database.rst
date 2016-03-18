.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _start-database:

Starting and Stopping the Database
----------------------------------

The database is registered as an operating system service. Each time a database node is rebooted, PerconaDB is restarted automatically as part of the node boot sequence. To manually stop or start the database you must be the unix root user of the node. Log in to the database node as root::

  # ssh root@<ip address of the node>

Stopping the database
~~~~~~~~~~~~~~~~~~~~~

.. code-block:: shell

  # service mysql stop

Starting the database
~~~~~~~~~~~~~~~~~~~~~

.. code-block:: shell

  # service mysql start

Restarting the database
~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: shell

  # service mysql restart
