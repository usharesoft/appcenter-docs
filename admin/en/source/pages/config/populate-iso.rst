.. Copyright 2017-2019 FUJITSU LIMITED

.. _populate-iso:

Populating ISO Skeleton
-----------------------

If you want to create ISO images with UForge then you must copy the ISO skeleton files and mount them to your system, as follows.

	.. note:: The procedure is the same for shared storage or local storage. The file location for shared storage is ``/volume1/DISTROS`` or the volume name as created when setting up the shared storage. For local storage it is ``/space/DISTROS`` or the directory name as created when setting up local storage.

#. Download the ISO that corresponds to the open source distributions you want. These are divided into two seperate ISOs:

	* CentOS, Debian, Ubuntu
	* Scientific Linux, Open SUSE, Oracle Linux

	.. code-block:: shell

		$ cd /space/DISTROS ; wget https://repository.usharesoft.com/downloads/uforge-centos-debian-ubuntu-iso-installers-latest.iso

	or

	.. code-block:: shell

		$ cd /space/DISTROS ; wget https://repository.usharesoft.com/downloads/uforge-opensuse-scientific-iso-installers-latest.iso

#. Mount the distribution by running:

	.. code-block:: shell

		$ mount -o loop /space/DISTROS/uforge-centos-debian-ubuntu-iso-installers-latest.iso /mnt

	.. note:: The example above will mount Centos, Debian and Ubuntu, but the same could be done for other open source distributions by modifying the path.


#. Copy the content of the ISO::

	$ rsync -a --progress /mnt/USS /space/DISTROS/

#. Umount the volume::

	$ umount /mnt
