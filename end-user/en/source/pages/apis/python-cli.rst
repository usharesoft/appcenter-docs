.. Copyright 2019 FUJITSU LIMITED

.. _python-cli:

Using UForge CLI
================

You can manage UForge AppCenter using the UForge command-line interface (CLI). 

Installing UForge CLI
---------------------

The UForge CLI is available for CentOS 7 clients.

In order to install the version of the UForge CLI which corresponds to your UForge AppCenter, please ask your administrator to provide you with the ``/etc/yum.repos.d/uforge-ee-centos.repo`` file of the UForge AppCenter installation.

Then, run the following commands:

To install the UForge CLI run::

	yum clean all
	yum install uforge-cli


Launching UForge CLI
--------------------

To launch UForge CLI locally on the machine, launch::

	/opt/UShareSoft/uforge/cli/bin/uforge -u LOGIN_NAME -p PASSWORD -U http://IP-OF-WEBSERVICE-NODE/api

The ``-p`` argument is optional. If the password is not entered in the command, the user will be prompted to enter their password.

Use ``--help`` to get a list of available commands.

.. note:: When accessing from outside the machine, use: https://IP-OF-WEBSERVICE-NODE/api

