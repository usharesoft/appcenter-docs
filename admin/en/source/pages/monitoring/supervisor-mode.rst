.. Copyright 2016 FUJITSU LIMITED

.. _supervisor-mode:

Using Supervisor Mode
---------------------

UForge allows you to login as another user if you have supervisor access. Supervisor access rights are assigned by the UForge administrator. Once you have supervisor rights, you will see the option ``supervisor mode`` in the top right of the UForge GUI banner.

.. warning:: Users with Supervisor Access will be able to log in as ANY of the users in the organization without entering a password. This right should be limited to support or managed services. Users with Supervisor Role needs to respect the privacy of the user data, according to current legislation.

To log in as another user with supervisor mode: 

  1. Click on ``supervisor mode`` in the top right of the UForge banner.
  2. In the login screen, enter the name of the user you want to log in as. You will note that you do not need to enter a password.

  .. image:: /images/supervisor-mode.jpg

UForge REST API in Supervisor Mode
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The syntax for using basic authentication in supervisor mode is::

	Authorization:Basic supervisorusername\supervisedusername:supervisorpassword
