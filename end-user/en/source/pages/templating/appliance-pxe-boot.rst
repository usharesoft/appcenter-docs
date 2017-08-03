.. Copyright 2017 FUJITSU LIMITED

.. _pxe-image:

Launching a PXE Image
---------------------

The PXE format can be used to install an OS through the network, based on a PXE image created from your UForge. The only difference is that the PXE format is not downloaded with the UI of the UForge, but through an iPXE shell. By default the connection will be via https but if it fails it will fall back to http.

.. note:: The PXE format is only available for CentOS-based images. 

You can execute iPXE script provided by UForge directly from iPXE shell. To do so, first make sure that your CentOS-based image is created in PXE format.

		.. note:: You must be in an iPXE shell. Most virtual machines already implement iPXE. 

	1. Start your machine and boot it on the iPXE shell.
	2. Make sure the network interface is configured by executing "dhcp" in the iPXE shell.
	3. Run the following command:: 

		chain http://YOUR_FORGE_ADRESS/resources/ipxe-init

	For example::

		chain http://10.1.2.197/resources/ipxe-init

	or::

		chain https://uforgeipxe.usharesoft.com/resources/ipxe-init

	4. The following screen should appear and the boot process can be started.

		.. image:: /images/pxe-boot.png

		Enter your UForge IP, root context and credentials. Then select ``Connect``.

	5. You can then select the PXE image you want to launch.

Initializing the Boot Process Using a Customized ipxe.iso File
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Most virtual machines already implement iPXE. You can customize to ease the use of iPXE in uForge.

The process of booting through iPXE can be started by using an ``ipxe.iso`` file. This file is built using the `iPXE open source project <http://git.ipxe.org/ipxe.git>`_.

To do so, clone or download the ipxe open source project and build it. However, there are some parameters that can be used and combined:
	* You can embed a script in ``ipxe.iso`` so that it automatically executes some iPSE commands when booting on it. We already provide a script that allows to select the UForge from which you want to download PXE images at: PATH_TO_THE_SCRIPT. For example:: 

		make EMBED=/home/user/scripts/myScript.ipxe

	* You can activate the HTTPS protocol to download files. First, check in ``src/config/general.h`` that there is the line ``define DOWNLOAD_PROTO_HTTPS`` and not ``undef DOWNLOAD_PROTO_HTTPS``.
	Then build the ``ipxe.iso`` by adding the argument: ``TRUST=/etc/ssl/certs/GeoTrust_Global_CA.pem``. To build iPXE with HTTPS enabled run:: 

		make TRUST=/home/UShareSoft.com.crt

More information about how to build your project can be found on `ipxe.org <http://ipxe.org/download>`_.

The project must be build in /src and the resulting output is found at ``/src/bin/ipxe.iso``. This ISO can then be used through qemu, VirtualBox, vcenter or on a USB stick to boot using iPXE protocol.

Once you are booting on ipxe.iso, the following screen should appear and the boot process can be started.

	.. image:: /images/pxe-boot.png

Enter your UForge IP, root context and credentials. Then select ``Connect``. You can then select the PXE image you want to launch.

Using a DHCP Server that Redirects to an iPXE Script
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The options of a DHCP server can be modified so that it redirects to an iPXE script (the one given on a UForge for example). To do so, the field named ``next-server`` must be associated with the filename to be executed. Using this, it possible to automatically execute the script given on a UForge (at http://YOUR_FORGE_ADRESS/resources/pxe). Then in an iPXE shell, execute the command ``dhcp``. The following screen should appear and the boot process can be started.

	.. image:: /images/pxe-boot.png

Enter your UForge IP, root context and credentials. Then select ``Connect``. You can then select the PXE image you want to launch.

