.. Copyright 2019 FUJITSU LIMITED

.. _start-secretmanager:

Starting and Stopping the Secret Manager
----------------------------------------

The Secret Manager is registered as an operating system service. Each time the secret manager node is rebooted, the service is restarted automatically as part of the node boot sequence. To manually stop or start the secret manager you must be the unix root user of the node. Log in to the secret manager node as root::

  $ ssh root@<ip address of the node>

Stopping the Secret Manager
~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: shell

  $ service vault stop

Starting the Secret Manager
~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: shell

  $ service vault start

Restarting the Secret Manager
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: shell

  $ service vault restart
