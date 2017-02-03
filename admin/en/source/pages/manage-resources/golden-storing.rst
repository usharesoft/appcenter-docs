.. Copyright 2017 FUJITSU LIMITED

.. _store-updated-golden:

Storing Golden Images
---------------------

Each time you have a new Golden Image, you need to store them in an appropriate location.

.. note:: To store the golden images (all profiles in one language) you will need about 40Gb of disk space on the UForge NAS.

You can store your golden images in the location you choose, but will need to specify the full path when adding the golden to your UForge. We recommend you store the golden images in::

	Base dir = Windows/releases/Server2008R2/x86_64/

The path is::

	{Language}/{Edition}/{Type}/{generation date}(YYYY-MM-DD)/goldenImagePathCompressedInGz

Where 
	* {Language} is one of ``English``, ``French`` or ``Japanese``
	* {Edition} corresponds to an official edition name such as ``Datacenter``, ``Standard``, ``Enterprise`` or ``Web``
	* {Type} is ``Full`` or ``Core``

So for example:

``Windows/releases/Server2008R2/x86_64/English/Standard/Core/2012-10-19/Windows_2008R2_Standard_Core_2012-10-19.raw.gz``

.. note:: If you plan to deploy generated Windows instances onto `K5 Fujitsu Public Cloud <http://www.fujitsu.com/global/solutions/cloud/k5/>`_, only "Standard" and "Enterprise" editions are supported.

For more detailed information, please refer to `official Fujitsu K5 IaaS Documentation <http://www.fujitsu.com/uk/Images/k5-iaas-features-handbook.pdf>`_.

.. _add-golden-toAppCenter:

Adding a Golden Image to UForge AppCenter
-----------------------------------------

Once you have your Golden Image, you need to add it to your UForge AppCenter in order to be able to use the Windows version to create appliance templates. Your golden image must be in one of the following formats:

	* raw.gz
	* raw.zip
	* raw.bz2
	* raw.lrz
	* vdi
	* vhd
	* vmdk

To add your Golden Image to UForge:

	1. Copy the image to:

		.. code-block:: shell

			$ /tmp/DISTROS/Windows/releases/<windows os version>/x86_64/<language>/<Edition>/<Core|Full>/<YYYY-MM-DD>/golden.xxx

		For example: /tmp/DISTROS/Windows/releases/Server2008R2/x86_64/English/Standard/Core/2014-04-28/Windows_2008R2_English_Datacenter_Core_2014-04-28.raw.gz

		Note:

			* File and directory ownership should be ``tomcat:tomcat``.
			* Permissions should be readable for all users
			* Disk name must be unique in the ``/tmp/DISTORS/Windows`` file tree

	2. You must ensure that the Windows distribution exists on your UForge AppCenter. If it does not, run::

		$ uforge org os add --name Windows --arch x86_64 --version Server2008R2

	3. In order to add the new golden image to the distribution, run:

		.. code-block:: shell

			$ org golden create --arch ARCH --edition EDITION --goldenDate GOLDENDATE --goldenPath GOLDENPATH --language LANGUAGE --type TYPE --name NAME --version VERSION --profileName PROFILENAME

		Where the following apply :

			* ``--edition`` Should be an official Microsoft Edition (Datacenter, Enterprise, Standard, Web)
			* ``--goldenDate`` The date of the golden image (YYYY-MM-DD). If the option is not present, will be set to the date the command is run
			* ``--goldenPath`` The full path where the golden image is stored.
			* ``--profileName`` The name of the profile, which will be visible in the user interface when creating a new Windows appliance. The name should be unique. If this option is not present, the name is generated automatically with the following info ``EDITION TYPE LANGUAGE``. So for example: ``Standard Full English``.

		For example:

		.. code-block:: shell

			$ uforge org golden create --name Windows --arch x86_64 --version Server2012 --edition Standard --goldenDate 2016-01-28 --language English --type Full --goldenPath /tmp/DISTROS/Windows/releases/WS2012.raw.gz --profileName StandardK5

		.. warning:: When running ``uforge orge golden create`` you can use the --force flag. This force flag will allow you to overwrite an existing golden with the same name. The --force flag should be used with caution as the new changes will be applied for all appliances already using this golden image.

