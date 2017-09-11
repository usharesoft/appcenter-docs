.. Copyright 2017 FUJITSU LIMITED

.. _data-synchronization:

Synchronize data to the target environment
------------------------------------------

At the end of the migration process, you can synchronize data from the source machine to the migrated instance.

.. warning:: This feature is only available for CentOS scans without overlay.

From the scan detail view, you can get the instructions to synchronize your data in the ``Synchronization`` sub tab.

Download the uforge-sync tool
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You need the uforge-sync binary in the source machine, available at ``/resources/uforge-sync.bin``, e.g.:

.. code-block:: bash

    $ curl --insecure -O https://10.1.2.206/resources/uforge-sync.bin

Launch the uforge-sync tool
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Once the uforge-sync binary has been copied to the source machine, you can launch it:

.. code-block:: bash

    $ chmod +x ./uforge-sync.bin ; ./uforge-sync.bin -U http://10.1.2.206 -u guest \
    -d 11.12.13.14 -t root -n users/guest/scannedinstances/1/scans/1 -i ~/.ssh/id_rsa

There are mandatory parameters:
    * ``-U``: the UForge server URL
    * ``-u``: the UForge user
    * ``-d``: the migrated instance address
    * ``-t``: the migrated instance user
    * ``-n``: the scan URI
.. note:: The usage of an SSH key pair is strongly recommended to connect to the migrated instance. You must precise the private key path using the ``-i`` parameter, and have the public key in the migrated instance's ``~/.ssh/authorized_keys`` file.

