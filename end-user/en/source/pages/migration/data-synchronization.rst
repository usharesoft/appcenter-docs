.. Copyright 2017-2019 FUJITSU LIMITED

.. _data-synchronization:

Synchronize Target Environment with Scanned Machine
---------------------------------------------------

At the end of the migration process, you can synchronize the running migrated instance with the source machine data.

.. warning:: This feature is only available for scans without overlay for the following Operating Systems:

  * CentOS 6, 7
  * Red Hat Enterprise Linux 6, 7
  * Debian 6, 7, 8
  * Ubuntu 12.04, 14.04, 16.04, 18.04
  * openSUSE 42

From the scan detail view, you can get the instructions to synchronize your data by clicking the ``Synchronize`` button.

.. note:: ``uforge-sync`` is based on ``rsync``, which does not handle BTRFS subvolume synchronization well. If you plan you synchronize ``snapshots`` directories from a BTRFS partition, it is better to exclude these directories from the scan and use another tool to handle synchronization, based on `btrfs send` and `btrfs receive`. 

Download the uforge-sync Tool
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You need the ``uforge-sync`` binary in the source machine, available at ``/resources/uforge-sync.bin``, for example:

.. code-block:: bash

    $ curl --insecure -O https://10.1.2.206/resources/uforge-sync.bin


.. note:: Older versions of curl command may not support a secure connection with UForge server. If you encounter a `SSL connect error`, you can use a web browser to download the binary or download the binary on another machine and copy it to your machine.

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

.. note:: The uforge-sync tool self extracts in ``/tmp`` directory before execution. If the machine source or destination is configured with ``noexec`` option on ``/tmp`` partition a ``Permission denied`` error will occur. In that case, you can specify the environment variable ``TMPDIR`` on the source machine to use a different directory.
	For example::

		TMPDIR=/root/ ./uforge-sync.bin -U https://<uforge-ip>/api -u <username> \
			-n users/guest/scannedinstances/1/scans/1 -d <target-ip> -i ~/.ssh/id_rsa

