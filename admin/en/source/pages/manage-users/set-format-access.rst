.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _set-formats:

Managing Access to Formats
--------------------------

Image formats can be managed at the level of the organization or of the user.

An administrator who wants to add format rights to several users within an organization should create the formats at the level of the organization and then add them to a subscription profile. In this case, all new users created with the given subscription profile will have access to the formats. 

In order to add a format you must create a format category, target format and target platform. 

.. note:: Without a target platform, the image cannot be published. 

The administrator can add or remove image formats for a specific user account using the command-line interface, as described here after.

Listing Formats
~~~~~~~~~~~~~~~

In UForge AppCenter, in order for a user to use a given format, a Target Format must be created and enabled for the given user and organization. Moreover, if the user wants to use a given Target Format for publishing an image, then a Target Platform must also be created, enabled and associated to the Target Format.

.. note:: As Target Platforms and Target Formats are created at the org but then must be enabled for a given user, the list of available formats can differ for users of the same organization. 

In order to list the formats available for a given org, use the command ``uforge org targetformat list``.

In order to list the formats available for a given user, use the command ``uforge user targetformat list``.

Adding Formats to an Organization
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To add access to a format to an organization, you must follow these steps:

	1. Add a target format category using  ``uforge org category create``
	2. Add a target format using  ``uforge org targetformat create``
	3. Add a target platform using  ``uforge org targetplatform create``
	4. Add the target format to the target platform using  ``uforge org targetplatform addTargetFormat``
	5. (Optional) Add the format to a subscription profile using  ``uforge subscription targetFormat add``. To add a target platform use either: 

		* ``uforge subscription targetformat add``
		* ``uforge subscription targetplatform add``

	6. Enable the format for the organization using  ``uforge org targetformat enable``.

You cannot add access to a format that is not included in the organization. For a list of formats that are part of the organization, use the command ``uforge org targetformat list``.

Adding Formats to a Group of Users
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To add access to a format to a group of users, you can add it as part of a subscription profile. This means that all the users that are created with this subscription profile will have access to the format. To add a format to a subscription profile use the command uforge subscription targetFormat add. You cannot add access to a format that is not included in the organization. For a list of formats that are part of the organization, use the command:

	* ``uforge org targetFormat list``
	* ``uforge org targetPlatform list``

For example::

	$ uforge subscription targetFormat add --targetFormat ovf qcow2 vbox --account kermit --url https://uforge.usharesoft.com:443 -u $ADMIN -p $PASS


Adding Formats to a Specific User
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To add access to a format for a specific user,  you must follow these steps:

	1. Add a target format category using  ``uforge org category create``
	2. Add a target format using  ``uforge org targetformat create``
	3. Add a target platform using  ``uforge org targetplatform create``
	4. Add the target format to the target platform using  ``uforge org targetplatform addTargetFormat``
	5. Enable the format for the user using ``uforge user targetformat enable``

You cannot give a user access to a format that is not included in the organization. For a list of formats that are part of the organization, use the command ``uforge org targetformat list``.

Enabling Access to a Format
~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. note:: When enabling or disabling a format, you must use the "name" of the format and not the "format". 

For example, if you are trying to enable the following format:

.. code-block:: shell

	+----+---------------+--------------+----------+-------+-----------------+--------+
	| Id |     Name      |    Format    | Category | Type  | CredAccountType | Access |
	+====+===============+==============+==========+=======+=================+========+
	| 34 | OpenStack VHD | openstackvhd | Cloud    | cloud | openstack       |        |
	+----+---------------+--------------+----------+-------+-----------------+--------+


You would use the following command:

.. code-block:: shell

	user targetformat disable --targetFormats "OpenStack VHD" --account kermit --url https://uforge.usharesoft.com:443 -u $ADMIN -p $PASS


Disabling Access to Formats
~~~~~~~~~~~~~~~~~~~~~~~~~~~

To disable access to one or more formats for a specific user  (in this example “kermit”), you must specify the format name with option ``--tragetFormats``, as follows:

.. code-block:: shell

	uforge user targetformat disable --targetFormats "OVF or OVA" QCOW2 VirtualBox --account kermit --url https://uforge.usharesoft.com:443 -u $ADMIN -p $PASS
	
