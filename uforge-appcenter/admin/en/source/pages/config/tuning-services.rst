.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _tuning-services:

Tuning the Services
-------------------

You can set the priority of tasks on the UForge platform in the file uforge_services.conf

You can run COMMAND with an adjusted value for the nice value, which affects process scheduling. This allows you to fine tune the order in which services are treated by the platform and allows you to improve performances. 

Modifying a Configuration Profile
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

UForge includes a configuration file written in json that includes a set of profiles. These profiles contain a set of parameters to deals with resource priority (CPU, disk) and set different properties.

The configuration file is located at /etc/UShareSoft/uforge/services_conf.json

For each profile, you can modify the following parameters:

	* ``ionice``: set io priority of a process
	* ``nice``: set cpu priority of a process
	* ``sudo``: give sudo access or not to a process
	* ``jvm``: set java system properties and options

The following is a basic example of a configuration profile, named ``profile1``. The parameters defined in ``profile1`` will be applied to the process specified by exec.

.. code-block:: 

"profile1": {
  "exec": "/opt/UShareSoft/uforge/tool/demo.sh",
  "ionice": {
    "class": 2,
    "level": 7
  },
"jvm": {
  "options": [
    "-Xmx2048m",
    "-Xms768m",
    "-XX:PermSize=256m",
    "-XX:MaxPermSize=1024m"
   ],
   "sys-properties": {
    "jna.library.path": "/opt/UShareSoft/uforge/lib"
  }
},
"nice": {
  "niceness": 15
}
}


Launching a Configuration Profile
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To launch the process in a specific profile, run the script ``runjob.py`` located in /opt/UShareSoft/uforge/bin/

This sets all the properties you have defined in the profile and forwards all the arguments.

Command usage:

.. code-block::

/opt/UShareSoft/uforge/bin/runjob.py profile_name arg1 arg2

where:
	* ``profile_name`` is the name of the profile
	* ``arg1...argn`` is the list of arguments to forward to the process this profile is to be applied to (defined in “exec’ element)

Including an Override
~~~~~~~~~~~~~~~~~~~~~

You can include a profile that will override a process in a profile.

The following is an example of a profile that includes an override profile called ``low_prio``

.. code-block::

"my_process": {
  "exec": "/opt/UShareSoft/uforge/tools/demo.bin",
  "include": "low_prio",
  "sudo": true
},
