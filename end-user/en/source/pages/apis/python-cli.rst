.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _hammr-cli:

Using Python CLI
================

You can manage UForge AppCenter using the Pythong command-line interface. 

Installing Python CLI
---------------------

To install the Python CLI run::

	yum install uforge-cli


Launching Python CLI
--------------------

To launch Pythong CLI locally on the machine, launch::

	/opt/UShareSoft/uforge/cli/bin/uforge -u $UFORGE_WEBSVC_LOGIN -p $UFORGE_WEBSVC_PASSWORD -U http://ws1:8080/ufws

When accessing from outside the machine, use: https://IP-OF-MACHINE/api

