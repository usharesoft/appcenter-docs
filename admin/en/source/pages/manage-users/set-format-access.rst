.. Copyright 2019 FUJITSU LIMITED

.. _set-format-access:

Managing User Access to Formats
-------------------------------

Image formats can be managed at the level of the organization or of the user.

An administrator who wants to add format rights to several users within an organization should create the formats at the level of the organization (refer to :ref:`formats-org`) and then add them to a subscription profile (refer to :ref:`formats-subscription`). In this case, all new users created with the given subscription profile will have access to the formats. 

.. _formats-subscription:

Adding Formats Using Subscription Profile
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To add access to a format to a group of users, you can add it as part of a subscription profile. This means that all the users that are created with this subscription profile will have access to the format. You cannot add access to a format that is not included in the organization. In order to force the changes to apply to all users (even those already created), use the option ``--allusers``. For a list of formats that are part of the organization, use the command:

	* ``uforge org targetformat list``
	* ``uforge org targetplatform list``

Therefore, in order to add formats using the subscription profile, run the following command. For example::

	$ uforge subscription targetformat add --targetformat ovf qcow2 vbox --allusers --name sub --url https://uforge.usharesoft.com:443 -u $ADMIN -p $PASS

In the example above, the argument ``--name`` is the name of the subscription profile.


.. _set-formats-user:

Adding Formats to a Specific User
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To add access to a format for a specific user,  you must follow these steps:

	1. Ensure the target format exists for the organization. For a list of formats that are part of the organization, use the command ``uforge org targetformat list``. 
	2. Enable the format for the user using ``uforge user targetformat enable``.


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

	$ uforge user targetformat ensable --targetFormats "OpenStack VHD" --account kermit --url https://uforge.usharesoft.com:443 -u $ADMIN -p $PASS


Disabling User Access to Formats
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To disable access to one or more formats for a specific user  (in this example “kermit”), you must specify the format name with option ``--targetformats``, as follows:

.. code-block:: shell

	$ uforge user targetformat disable --targetformats "OVF or OVA" QCOW2 VirtualBox --account kermit --url https://uforge.usharesoft.com:443 -u $ADMIN -p $PASS
	
