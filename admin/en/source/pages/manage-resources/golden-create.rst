.. Copyright 2016 FUJITSU LIMITED

.. _create-golden-image:

Creating a Golden Image
-----------------------

To create a new Golden Image, you will need to:

	1. Ensure the following two partitions exist. These partitions are created by default during a standard Windows installation. There must be no other partitions.

		* System partition. This one is hidden, created automatically during installation of Windows Server.
		* Drive ``C:``

	2. The following Windows features must be installed as Administrator:

		* ServerCore-WOW64
		* NetFx2-ServerCore
		* NetFx2-ServerCore-WOW64
		* NetFx3ServerFeatures
		* NetFx3

		To install these features, you can either go to the ``Control Panel`` under ``Programs and Features`` or open a command prompt window as Administrator and run the following Windows commands:

		.. code-block:: shell

			$ start /w dism /online /enable-feature /all /featurename:ServerCore-WOW64 
			$ start /w dism /online /enable-feature /all /featurename:NetFx2-ServerCore 
			$ start /w dism /online /enable-feature /all /featurename:NetFx2-ServerCore-WOW64 
			$ start /w dism /online /enable-feature /all /featurename:NetFx3ServerFeatures 
			$ start /w dism /online /enable-feature /all /featurename:NetFx3
			$ start /w dism /online /enable-feature /all /featurename:NetFx3-ServerCore
			$ start /w dism /online /enable-feature /all /featurename:NetFx3-ServerCore-WOW64

		.. note:: If any of the above commands fail with an error indicating that the feature is non-existant, ignore the error and continue.

	3. Install gtk-sharp-2.12.10.win32.msi. 

		* You can download it from ``http://download.mono-project.com/gtk-sharp/gtk-sharp-2.12.10.win32.msi.old``
		* Rename ``gtk-sharp-2.12.10.win32.msi.old to gtk-sharp-2.12.10.win32.msi``
		* Run the following command: ``gtk-sharp-2.12.10.win32.msi``

	4. We recommend that you run Windows Update to ensure that the latest updates are pre-installed in the Golden Image.
	
	5. Optionally, you can also add the following customizations:

		* Modify the registry
		* Extra software installation
		* User creation

	6. Optionally, you can free several gigabytes of space by cleaning up windows updates installers. 

		.. warning:: After this optimization you may not be able to uninstall some of the Windows updates.

		.. code-block:: shell	

			$ dism /online /Cleanup-Image /StartComponentCleanup /ResetBase

	7. If you have Service Packs installed, you can free up some space by executing the following command, which will merge the Service Pack installer to the operating system. 

		.. warning:: After this optimization, you will not be able to uninstall the Service Pack.

		.. code-block:: shell

			$ dism /online /Cleanup-Image /SPSuperseded

	8. You can optionally perform optimizations in size for the compressed raw virtual disk image. To do so, you must:

		a. Before the sysprep step, use the Microsoft Sysinternals tool called sdelete.exe (or sdelete64.exe) with option ``-z`` in a command line for all partitions, example:

			.. code-block:: shell

				$ sdelete -z C:

   		b. After finishing the golden image (after sysprep at the last step), but before compressing the .raw with gzip or lrzip, perform the following command to the .raw virtual disk image:

			.. code-block:: shell

				$ cp --sparse=always image.raw newimage.raw
        
        	This will copy the image file but skip the zeros, so the .raw image will be as sparse as possible, also helping the compression program.

			.. code-block:: shell

				$ mv -f newimage.raw image.raw

	9. For Windows 2008R2 create a file as follows. Note that the admin user name may be different depending on the environment. Please replace ``Administrator`` in the script with the appropriate one.

		.. code-block:: shell

			mkdir C:\Windows\Setup\Scripts
			notepad C:\Windows\Setup\Scripts\SetupComplete.cmd
			---
			net user Administrator /logonpasswordchg:yes
			---

	10. For Windows 2012 and 2012R create a file as follows. Note that the admin user name may be different depending on the environment. Please replace ``Administrator`` in the script with the appropriate one.

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

	11. Open a command prompt window as an administrator and go to the ``%WINDIR%\\system32\sysprep`` directory. Then run:

		.. code-block:: shell

			$ sysprep.exe /generalize /oobe /shutdown /unattend:c:\path-to-sysprep\Unattend.xml
	
		.. note:: This will shutdown the machine. Do not boot the machine again!

	12. You can now compress the golden images by running: 

		.. code-block:: shell

			$ gzip image.raw

You can now save your golden image on the NAS.

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
		            <InputLocale>0411:00000411</InputLocale>
		            <SystemLocale>ja-JP</SystemLocale>
		            <UILanguage>ja-JP</UILanguage>
		            <UILanguageFallback>ja-JP</UILanguageFallback>
		            <UserLocale>ja-JP</UserLocale>
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

Example of Unattend File for Windows 2012 and 2012R2
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The following is an example of an unattend file to be used when creating a golden image for Windows 2012 and 2012R2.

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
		            <InputLocale>0411:00000411</InputLocale>
		            <SystemLocale>ja-JP</SystemLocale>
		            <UILanguage>ja-JP</UILanguage>
		            <UILanguageFallback>ja-JP</UILanguageFallback>
		            <UserLocale>ja-JP</UserLocale>
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