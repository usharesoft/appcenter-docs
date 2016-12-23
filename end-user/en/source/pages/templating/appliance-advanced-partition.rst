.. Copyright 2016 FUJITSU LIMITED


.. _appliance-install-profile-partitioning:

Configuring Advanced Partitioning
---------------------------------

You can configure advanced partitioning as part of your appliance template in the ``Install Profile``. The elements you can configure will depend if your template is Linux or Windows based. 

Advanced Partitioning for Linux
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The following example assumes that you want to build the following partitions, with a virtual hard drive of 20 GB.::

	part /boot –fstype=ext4 –size=500 –ondisk=sda
	part pv.1 –grow –size=1 –ondisk=sda
	volgroup ROOTVG –pesize=4096 pv.1
	logvol / –fstype=ext4 –name=LogVolROOT –vgname=ROOTVG –size=3072
	logvol swap –name=LogVolSWAP –vgname=ROOTVG –size=1024
	logvol /usr –fstype=ext4 –name=LogVolUSR –vgname=ROOTVG –size=5120
	logvol /var –fstype=ext4 –name=LogVolVAR –vgname=ROOTVG –size=1024
	logvol /home –fstype=ext4 –name=LogVolHOME –vgname=ROOTVG –size=5120
	logvol /tmp –fstype=ext4 –name=LogVolTMP –vgname=ROOTVG –size=1024
	logvol /opt –fstype=ext4 –name=LogVolOPT –vgname=ROOTVG –size=1024

To set advanced partitioning for an appliance template:
	1. Select the appliance you want to modify.
	2. From the ``Stack`` page, click on ``Install Profile`` in the toolbox.
	3. Select ``Partitioning``, then ``Advanced Partitioning``.

		.. note:: In order to view the information more easily, you can click on the enlarge button in the top right. This opens a separate window where you will see all the advanced partitioning.

	4. Advanced partitioning works sequentially, from top to bottom. The three sections offered by the UI, which are ``Disks``, ``Logical Groups``, and ``Logical Volumes`` should be filled in order, sequentially:

	    * disks with partitions including the total virtual disk size required
	    * logical group(s), assigning the associated physical extent (partition)
	    * specify the logical volume specification for the created logical group(s)

	    .. image:: /images/advanced-partitioning.png

	5. Click on the arrow in ``Disks`` next to sda. You will see the default disks.

		.. image:: /images/install-profile-partitioning-disks.png

	6. Delete the default ``linux swap`` partition by clicking the x at the end of the line with ``linux-swap``. You must not set the swap size to 0.
	7. Click on the size of the ``MSDOS`` partition to set it to ``20000``.
	8. Click on the partition 1 information to modify the file system to ``ext4`` and the mount point to ``/boot``.
	9. Click on the + sign to create a new partition with type ``lvm2`` and size set to ``18000 MB``.
	10. Unselect ``Grow`` and set the size of the ``/boot`` disk to ``500``.
	11. In the ``Logical Groups`` section, click on the + sign and set the name of the logical group. For this example: ``ROOTVG``.
	12. Next to the newly created volume group, click on the + sign to create a new volume extent. A pop-up window will appear proposing a ``sda/2`` physical extent with size automatically set to ``18000 MB``. Click ``ok``.

		.. image:: /images/install-profile-partitioning-enlarge.png

	13. Create the logical volumes one by one, or create them all at once and then edit the respective specifications. For each logical volume to create, click on the + sign in the ``Logical Volumes`` section. For our example, you will need seven logical volumes.

		* LogVolROOT  	ext4		/	3072
		* LogVolSWAP	linux-swap		1024
		* LogVolUSR	ext4		/usr	5120
		* LogVolVAR	ext4		/var	1024
		* LogVolHOME	ext4		/home	5120
		* LogVolTMP	ext4		/tmp	1024
		* LogVolOPT	ext4		/opt	1024

	14. Click ``Save``.

.. _appliance-install-profile-partitioning-windows:

Advanced Partitioning for Windows
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can set an advanced partitioning table for a Windows-based appliance template.  To set advanced partitioning:

	1. Click on ``Partitioning`` and select ``Advanced Partitioning``
	2. Click on the green + sign at the top.
	3. You can modify the name and partitions type
	4. Select the filesystem to ``ntfs`` and mount point, for example: ``D:``.
	5. Enter the size. The install disk should be at least ``14 Gb`` for core versions and ``20Gb`` for full versions
	6. Check the box in the ``Grow`` column if you want the partition to be growable.
	7. Click ``save``.

		.. image:: /images/install-profile-partitioning-windows.png



