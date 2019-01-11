.. Copyright 2019 FUJITSU LIMITED

.. _create-golden-image:

Creating a Golden Image Manually
--------------------------------

.. note:: A good knowledge of Microsoft Windows is required to create your own Golden Images manually. This method is more complex than creating a Golden Image by scanning a Windows machine and importing the scan as Golden Image. We strongly recommend you create your golden from scan. Please refer to :ref:`scan-to-golden`.

.. warning:: Support services do not provide support for golden images created manually.

Generating all the profiles available (in one language) takes roughly 4 to 7 hours depending on the machine/network performance. The Golden Image includes all updates at the moment when generated and therefore you will not need to run package updates later. 

Once the Golden Image is created, you will need to

	1. Save it to the proper location (as described in :ref:`store-updated-golden`). 
	2. Store the golden images (all profiles in one language) as described in :ref:`store-updated-golden`. You will need about 40Gb of disk space on the UForge NAS. 
	3. Add the Golden Image to your UForge AppCenter, as described in :ref:`add-golden-toAppCenter`.

To create a new Golden Image, you will need to:

	1. Ensure the following two partitions exist. These partitions are created by default during a standard Windows installation. There must be no other partitions.

		* System partition. This one is hidden, created automatically during installation of Windows Server.
		* Drive ``C:``

	2. We recommend that you run Windows Update to ensure that the latest updates are pre-installed in the Golden Image.

	3. Optionally, you can also add the following customizations:

		* Modify the registry
		* Extra software installation
		* User creation

	4. Optionally, you can free several gigabytes of space by cleaning up Windows updates installers.

		.. warning:: After this optimization you may not be able to uninstall some of the Windows updates.

		.. code-block:: shell

			$ dism /online /Cleanup-Image /StartComponentCleanup /ResetBase

	5. If you have Service Packs installed, you can free up some space by executing the following command, which will merge the Service Pack installer to the operating system.

		.. warning:: After this optimization, you will not be able to uninstall the Service Pack.

		.. code-block:: shell

			$ dism /online /Cleanup-Image /SPSuperseded

	6. You can optionally perform optimizations in size for the compressed raw virtual disk image. To do so, you must:

		a. Before the sysprep step, use the Microsoft Sysinternals tool called sdelete.exe (or sdelete64.exe) with option ``-z`` in a command line for all partitions, example:

			.. code-block:: shell

				$ sdelete -z C:

   		b. After finishing the golden image (after sysprep at the last step), but before compressing the .raw with gzip or lrzip, perform the following command on the .raw virtual disk image:

			.. code-block:: shell

				$ cp --sparse=always image.raw newimage.raw

        	This will copy the image file but skip the zeros, so the .raw image will be as sparse as possible, also helping the compression program.

			.. code-block:: shell

				$ mv -f newimage.raw image.raw

	7. For Windows 2008R2, you can optionally change the password of the admin user at the first boot by creating a file as follows. Note that the admin user name may be different depending on the environment. Please replace ``Administrator`` in the script with the appropriate one.

		.. code-block:: shell

			mkdir C:\Windows\Setup\Scripts
			notepad C:\Windows\Setup\Scripts\SetupComplete.cmd
			---
			net user Administrator /logonpasswordchg:yes
			---

	8. For Windows 2012, 2012R2 and 2016, you can optionally change the password of the admin user at the first boot by creating a file as follows. Note that the admin user name may be different depending on the environment. Please replace ``Administrator`` in the script with the appropriate one.

		.. code-block:: shell

			mkdir C:\Windows\Setup\Scripts
			notepad C:\Windows\Setup\Scripts\SetupComplete.cmd
			---
			@echo off
			if not exist C:\etc\UShareSoft\no_console (
			    net user Administrator /logonpasswordchg:yes
			)
			---

		``changepasswd.bat`` is specified in ``Unattend.xml``. The script is launched only when the image has no console, just after ``uforge-install-config`` before displaying desktop.

			.. code-block:: shell

				notepad C:\uforge\changepasswd.bat
				---
				@if exist C:\etc\UShareSoft\no_console (
				    @title Changing Administrator password
				    echo Please provide new Administrator password.
				    net user Administrator *
				)
				---

	9. Open a command prompt window as an administrator and go to the ``%WINDIR%\system32\sysprep`` directory. Then run:

		.. code-block:: shell

			$ sysprep.exe /generalize /oobe /shutdown /unattend:c:\path-to-sysprep\Unattend.xml

		.. warning:: This will shutdown the machine. Do not boot the machine again!

		.. note:: If the ``unattend.xml`` is not properly configured, the setup initiated by sysprep may suspend or stop during processing. In this case, you need to connect to the system through a console, not by Remote Desktop Service, in order to read setup instructions. 
		
		.. note:: The command argument ``/unattend:c:\path-to-sysprep\Unattend.xml`` should not be specified when creating a Golden Image that will be used to generate Windows machine images to be published to Azure. This is because the unattend file created by Azure will be used instead.

	10. You can now compress the golden images by running:

		.. code-block:: shell

			$ gzip image.raw

You can now save your golden image to the location you wish. This path will need to be specified when you add the golden images to your UForge. 


.. _store-updated-golden:

Storing Golden Images on the NAS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Each time you create a new Golden Image manually, you need to store them in an appropriate NAS location.

.. note:: To store the golden images (all profiles in one language) you will need about 40Gb of disk space on the UForge NAS.

You can store your golden images in the NAS location of your choice, but will need to specify the full path when adding the golden to your UForge. We recommend you store the golden images in::

	Base dir = Windows/releases/Server2012/x86_64/

The path is::

	{Language}/{Edition}/{Type}/{generation date}(YYYY-MM-DD)/goldenImagePathCompressedInGz

Where 
	* {Language} is one of ``English``, ``French`` or ``Japanese``
	* {Edition} corresponds to an official edition name such as ``Datacenter``, ``Standard``, ``Enterprise`` or ``Webserver``
	* {Type} is ``Full`` or ``Core``

So for example:

``Windows/releases/Server2012/x86_64/English/Standard/Core/2015-10-19/Windows_2012_Standard_Core_2015-10-19.raw.gz``

.. note:: If you plan to deploy generated Windows instances onto `K5 Fujitsu Public Cloud <http://www.fujitsu.com/global/solutions/cloud/k5/>`_, only "Standard" and "Enterprise" editions are supported.

For more detailed information, please refer to `official Fujitsu K5 IaaS Documentation <http://www.fujitsu.com/uk/Images/k5-iaas-features-handbook.pdf>`__.

.. _add-golden-toAppCenter:

Adding a Golden Image to UForge AppCenter
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Once you have created a Golden Image manually, you need to add it to your UForge AppCenter in order to be able to use the Windows version to create appliance templates. Your golden image must be in one of the following formats:

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

		For example: /tmp/DISTROS/Windows/releases/Server2012/x86_64/English/Standard/Core/2015-04-28/Windows_Server2012_English_Datacenter_Core_2015-04-28.raw.gz

		Note:

			* File and directory ownership should be ``tomcat:tomcat``.
			* Permissions should be readable for all users
			* Disk name must be unique in the ``/tmp/DISTROS/Windows`` file tree

	2. You must ensure that the Windows distribution exists on your UForge AppCenter. If it does not, run::

		$ uforge org os add --name Windows --arch x86_64 --version Server2012

	3. In order to add the new golden image to the distribution, run:

		.. code-block:: shell

			$ uforge org golden create --arch ARCH --edition EDITION --goldenDate GOLDENDATE --goldenPath GOLDENPATH --language LANGUAGE --type TYPE --name NAME --version VERSION --profileName PROFILENAME

		Where the following apply :

			* ``--edition`` Should be an official Microsoft Edition (Datacenter, Enterprise, Standard, Webserver)
			* ``--goldenDate`` The date of the golden image (YYYY-MM-DD). If the option is not present, will be set to the date the command is run
			* ``--goldenPath`` The full path where the golden image is stored.
			* ``--name`` The distribution name (Windows)
			* ``--version`` The OS version
			* ``--arch`` The architecture
			* ``--profileName`` The name of the profile, which will be visible in the user interface when creating a new Windows appliance. The name should be unique. If this option is not present, the name is generated automatically with the following info ``EDITION TYPE LANGUAGE``. So for example: ``Standard Full English``.

		For example:

		.. code-block:: shell

			$ uforge org golden create --name Windows --arch x86_64 --version Server2012 --edition Standard --goldenDate 2016-01-28 --language English --type Full --goldenPath /tmp/DISTROS/Windows/releases/Server2012/x86_64/WS2012.raw.gz --profileName StandardK5

		.. warning:: When running ``uforge org golden create`` you can use the ``--force`` flag. This force flag will allow you to overwrite an existing golden with the same name. The ``--force`` flag should be used with caution as the new changes will be applied for all appliances already using this golden image.

.. _delete-golden:

Deleting a Golden Image Using the CLI
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In order to delete a golden image from your UForge, run the command ``org golden delete`` with the following arguments:

*  ``--arch`` : The operating system architecture (i386, x86_64).
*  ``--profileName`` : The name of the profile to delete
*  ``--name`` : Operating system name
*  ``--version`` : Operating system version

For example :

	.. code-block:: shell

		$ uforge org golden delete --name Windows --arch x86_64 --version Server2012 --profileName Standard Full Edition

.. _example-unattendfile:

Example of Unattend File for Windows 2008R2
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The following is an example of an unattend file to be used when creating a golden image for Windows 2008R2.

	.. code-block:: shell

		<?xml version="1.0" encoding="utf-8"?>
		<unattend xmlns="urn:schemas-microsoft-com:unattend">
		    <settings pass="oobeSystem">
		        <component name="Microsoft-Windows-Shell-Setup" processorArchitecture="amd64" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
		            <OOBE>
		                <HideEULAPage>true</HideEULAPage>
		                <NetworkLocation>Work</NetworkLocation>
		                <ProtectYourPC>3</ProtectYourPC>
		                <SkipUserOOBE>true</SkipUserOOBE>
		            </OOBE>
		            <UserAccounts>
		                <AdministratorPassword>
		                    <Value>Welcome@UShareSoft</Value>
		                    <PlainText>true</PlainText>
		                </AdministratorPassword>
		            </UserAccounts>
		        </component>
		        <component name="Microsoft-Windows-International-Core" processorArchitecture="amd64" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
		            <InputLocale>0409:00000409</InputLocale>
		            <SystemLocale>en-US</SystemLocale>
		            <UILanguage>en-US</UILanguage>
		            <UILanguageFallback>en-US</UILanguageFallback>
		            <UserLocale>en-US</UserLocale>
		        </component>
		    </settings>
		    <settings pass="specialize">
		        <component name="Microsoft-Windows-Shell-Setup" processorArchitecture="amd64" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
		            <ProductKey>XXXXX-XXXXX-XXXXX-XXXXX-XXXXX</ProductKey>
		            <ComputerName />
		        </component>
		        <component name="Microsoft-Windows-DNS-Client" processorArchitecture="amd64" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
		            <DNSDomain />
		            <UseDomainNameDevolution>true</UseDomainNameDevolution>
		        </component>
		    </settings>
		    <settings pass="generalize">
		        <component name="Microsoft-Windows-PnpSysprep" processorArchitecture="amd64" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
		            <PersistAllDeviceInstalls>false</PersistAllDeviceInstalls>
		            <DoNotCleanUpNonPresentDevices>false</DoNotCleanUpNonPresentDevices>
		        </component>
		    </settings>
		</unattend>

	.. note:: ``<ProductKey>`` element in the unattend file may not be mandatory. Whether the element is necessary or not depends on the type of installation media you used for the system. For example, the Volume License media does not require any <ProductKey> element in the unattend file. Please refer to Microsoft documentation for details.

	.. note:: Elements for the locale and the language in the unattend file should have appropriate values in accordance with the language of the target OS. The following example shows the elements and their values for Japanese Windows.

		.. code-block:: shell

			<InputLocale>0411:00000411</InputLocale>
			<SystemLocale>ja-JP</SystemLocale>
			<UILanguage>ja-JP</UILanguage>
			<UILanguageFallback>ja-JP</UILanguageFallback>
			<UserLocale>ja-JP</UserLocale>

Example of Unattend File for Windows 2012, 2012R2, or 2016
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The following is an example of an unattend file to be used when creating a golden image for Windows 2012, 2012R2 or 2016.

	.. code-block:: shell

		<?xml version="1.0" encoding="utf-8"?>
		<unattend xmlns="urn:schemas-microsoft-com:unattend">
		    <settings pass="oobeSystem">
		        <component name="Microsoft-Windows-Shell-Setup" processorArchitecture="amd64" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
		            <OOBE>
		                <HideEULAPage>true</HideEULAPage>
		                <NetworkLocation>Work</NetworkLocation>
		                <ProtectYourPC>3</ProtectYourPC>
		                <SkipUserOOBE>true</SkipUserOOBE>
		            </OOBE>
		            <UserAccounts>
		                <AdministratorPassword>
		                    <Value>Welcome@UShareSoft</Value>
		                    <PlainText>true</PlainText>
		                </AdministratorPassword>
		            </UserAccounts>
		            <FirstLogonCommands>
		                <SynchronousCommand wcm:action="add">
		                    <CommandLine>c:\uforge\changepasswd.bat</CommandLine>
		                    <Description>ChangeDefaultPassword</Description>
		                    <Order>1</Order>
		                </SynchronousCommand>
		            </FirstLogonCommands>
		        </component>
		        <component name="Microsoft-Windows-International-Core" processorArchitecture="amd64" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
		            <InputLocale>0409:00000409</InputLocale>
		            <SystemLocale>en-US</SystemLocale>
		            <UILanguage>en-US</UILanguage>
		            <UILanguageFallback>en-US</UILanguageFallback>
		            <UserLocale>en-US</UserLocale>
		        </component>
		    </settings>
		    <settings pass="specialize">
		        <component name="Microsoft-Windows-Shell-Setup" processorArchitecture="amd64" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
		            <ProductKey>XXXXX-XXXXX-XXXXX-XXXXX-XXXXX</ProductKey>
		            <ComputerName />
		        </component>
		        <component name="Microsoft-Windows-DNS-Client" processorArchitecture="amd64" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
		            <DNSDomain />
		            <UseDomainNameDevolution>true</UseDomainNameDevolution>
		        </component>
		    </settings>
		    <settings pass="generalize">
		        <component name="Microsoft-Windows-PnpSysprep" processorArchitecture="amd64" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
		            <PersistAllDeviceInstalls>false</PersistAllDeviceInstalls>
		            <DoNotCleanUpNonPresentDevices>false</DoNotCleanUpNonPresentDevices>
		        </component>
		    </settings>
		</unattend>

	.. note:: ``<ProductKey>`` element in the unattend file may not be mandatory. Whether the element is necessary or not depends on the type of the installation media you used for the system. For example, the Volume License media does not require any <ProductKey> element in the unattend file. Please refer to Microsoft documentation for details.

	.. note:: Elements for the locale and the language in the unattend file should have appropriate values in accordance with the language of the target OS. The following example shows the elements and their values for Japanese Windows.

		.. code-block:: shell

			<InputLocale>0411:00000411</InputLocale>
			<SystemLocale>ja-JP</SystemLocale>
			<UILanguage>ja-JP</UILanguage>
			<UILanguageFallback>ja-JP</UILanguageFallback>
			<UserLocale>ja-JP</UserLocale>

