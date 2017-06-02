.. Copyright 2017 FUJITSU LIMITED

.. _repository-local-storage:

UForge Repository on Local Storage
----------------------------------

When using local storage, UForge must already be installed, but not configured.  Create two directories one for the operating system data and the other for all the user data (for example ``My Software`` and images generated).

	1. Create the operating system directory, for example: ``/space/DISTROS``
	2. Create the user data directory, for example: ``/space/USER_DATA``
	3. Copy the operating system information from the UForge setup ISO to the DISTROS sub-directory:

		.. code-block:: shell

			$ rsync -a –-progress /<disk directory>/DISTROS/ /space/DISTROS/

	.. note:: It may take up to an hour to copy all of the data. 

	4. If you want to create ISO images with UForge then you must copy the ISO skeleton files and mount them to your system, as follows:

		a) Download the ISO that corresponds to the distributions you want. These are divided into two seperate ISOS:
			* CentOS, Debian, Ubuntu
			* Scientific Linux, Open SUSE

		.. code-block:: shell

			cd /space/DISTROS ; wget https://repository.usharesoft.com/downloads/uforge-centos-debian-ubuntu-iso-installers-latest.iso

		or

		.. code-block:: shell

			cd /space/DISTROS ; wget https://repository.usharesoft.com/downloads/uforge-opensuse-scientific-iso-installers-latest.iso

		b) Mount the distribution by running::

			# mount -o loop /space/DISTROS/uforge-centos-debian-ubuntu-iso-installers-latest.iso /mnt

		.. note:: The example above will mount Centos, Debian and Ubuntu, but the same could be done for Scientific Linux and Open SUSE by modifying the path.


		c) Copy the content of the ISO::

			# rsync -a --progress /mnt/USS /space/DISTROS/

		d) Umount the volume::

			# umount /mnt
