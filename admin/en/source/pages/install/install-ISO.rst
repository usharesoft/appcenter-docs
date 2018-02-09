.. Copyright 2017 FUJITSU LIMITED

.. _install-iso:

Installing from an ISO
----------------------

.. note:: The ISO install will be done on /dev/sda. The ``kickstart`` automates the installation of the operating system on the first disk, which must be managed by either a SCSI or SATA controller.

To install UForge from the ISO image:

	1. Attach the ISO to a VM or burn the ISO to a DVD (for installing to a physical machine, note the machine will require a DVD disk drive).
	2. Boot the system from the ISO. The following main window will be displayed.

	.. image:: /images/install-centos7.png

	3. Click on ``Date & Time``. Select a timezone and click ``Done``.
	4. Click on ``Keyboard``. Choose the keyboard layout you want to use and click ``Done``.
	5. Click on ``Network & Host name``. Using the top right toggle set it to ``On``.

	.. image:: /images/install-networkon.png

	6. Click ``Begin Installation`` in the bottom right. The following window will be displayed.

	.. image:: /images/install-centos7-pw.png

	7. Click ``Root Password``. Set the root password and click ``Done``.

	8. Wait for the install to finish (this can take a while), then click ``Reboot`` to reboot the system

	9. Once the system reboots, accept the EULA license agreement, select your network configuration (DHCP or manual), select the desired timezone. Then, click ``Accept all and continue``.
	
For a multi-node installation, repeat these steps for every physical or VM instance you want to install.  
The installation phase is complete, you are now ready to configure the UForge AppCenter, see :ref:`configure-uforge`.

Post-Installation Cleanup
-------------------------

To finalize the deployment phase, you should remove all the bits that helped to complete the deployment of UForge. To do so, run the following command on all the nodes composing the platform::

	yum erase -y uforge-deploy uforge-studio-common-libs uforge-studio-runtime uforge-studio-perl uforge-studio-java-jre uforge-studio-php uforge-studio-tcl uforge-studio-lighttpd
