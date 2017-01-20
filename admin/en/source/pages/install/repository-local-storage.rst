.. Copyright 2017 FUJITSU LIMITED

.. _repository-local-storage:

UForge Repository on Local Storage
----------------------------------

When using local storage, UForge must already be installed, but not configured.  Create two directories one for the operating system data and the other for all the user data (for example ``My Software`` and images generated).

	1. Create the operating system directory, for example: /space/DISTROS
	2. Create the user data directory, for example: /space/USER_DATA
	3. Now copy all the operating system information from the UForge Setup Disk to the DISTROS sub-directory::

		//# rsync -a –-progress /<disk directory>/DISTROS/ /space/DISTROS/

.. note:: It may take up to an hour to copy all of the data. 
