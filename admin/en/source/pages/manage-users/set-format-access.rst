.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _set-formats:

Managing User Access to Formats
-------------------------------

Image formats can be managed at the level of the organization or of the user.

An administrator who wants to add format rights to several users within an organization should create the formats at the level of the organization (refer to :ref:`formats-org`) and then add them to a subscription profile (refer to :ref:`ormats-subscription`. In this case, all new users created with the given subscription profile will have access to the formats. 

The administrator can add or remove image formats for a specific user account using the command-line interface, as described here after.

.. _set-formats-user:

Adding Formats to a Specific User
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To add access to a format for a specific user,  you must follow these steps:

	1. Ensure the target format exists for the organisation. For a list of formats that are part of the organization, use the command ``org targetformat list``. 
	2. Enable the format for the user using ``user targetformat enable``.


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


Disabling User Access to Formats
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To disable access to one or more formats for a specific user  (in this example “kermit”), you must specify the format name with option ``--tragetFormats``, as follows:

.. code-block:: shell

	user targetformat disable --targetFormats "OVF or OVA" QCOW2 VirtualBox --account kermit --url https://uforge.usharesoft.com:443 -u $ADMIN -p $PASS
	
