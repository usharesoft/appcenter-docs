.. Copyright 2018 FUJITSU LIMITED

.. _data-synchronization:

Synchronize Target Environment with Scanned Machine
---------------------------------------------------

At the end of the migration process, you can synchronize the running migrated instance with the source machine data.

.. warning:: This feature is only available for scans without overlay for the following Operating Systems:

  * CentOS 6, 7
  * Red Hat Enterprise Linux 6, 7
  * Debian 6, 7, 8
  * Ubuntu 16.04, 14.04, 12.04

From the scan detail view, you can get the instructions to synchronize your data by clicking the ``Synchronize`` button.

Download the uforge-sync Tool
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You need the ``uforge-sync`` binary in the source machine, available at ``/resources/uforge-sync.bin``, for example:

.. code-block:: bash

    $ curl --insecure -O https://10.1.2.206/resources/uforge-sync.bin

Launch the uforge-sync Tool
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Once the ``uforge-sync`` binary has been copied to the source machine, you can launch it:

.. code-block:: bash

    $ chmod +x ./uforge-sync.bin ; ./uforge-sync.bin -U http://10.1.2.206/api -u guest \
    -n users/guest/scannedinstances/1/scans/1 -d 11.12.13.14 -i ~/.ssh/id_rsa

The following are mandatory parameters:
    * ``-U``: the UForge server URL
    * ``-u``: the UForge user
    * ``-n``: the scan URI
    * ``-d``: the migrated instance address

.. note:: The usage of an SSH key pair is strongly recommended to connect to the migrated instance. You must specify the private key path using the ``-i`` parameter, and have the public key in the migrated instance's ``~/.ssh/authorized_keys`` file.

If you encounter an error message indicating the SSL certificate subject name does not match the target host name, you can add the ``-k`` option to your command line to prevent ``uforge-sync.bin`` from strictly checking the SSL certificate.

.. note:: The uforge-sync tool may overwrite existing configuration files of running services. Please restart services to load new configuration, if necessary.
