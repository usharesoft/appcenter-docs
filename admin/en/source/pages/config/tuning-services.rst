.. Copyright 2018 FUJITSU LIMITED

.. _tuning-services:

Tuning the Services
-------------------

You can set the priority of tasks on the UForge platform in the file ``services_conf.json``.

You can run COMMAND with an adjusted value for the nice value, which affects process scheduling. This allows you to fine tune the order in which services are treated by the platform and allows you to improve performances. 

Modifying a Configuration Profile
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

UForge includes a configuration file written in json that includes a set of profiles. These profiles contain a set of parameters to deal with resource priority (CPU, disk) and set different properties.

The configuration file is located at ``/etc/UShareSoft/uforge/services_conf.json``

For each profile, you can modify the following parameters:

	* ``ionice``: set io priority of a process
	* ``nice``: set cpu priority of a process
	* ``sudo``: give sudo access or not to a process
	* ``jvm``: set java system properties and options

The following is a basic example of a configuration profile, named ``profile1``. The parameters defined in ``profile1`` will be applied to the process specified by exec.

.. code-block:: javascript

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
      "-XX:MetaspaceSize=256m",
      "-XX:MaxMetaspaceSize=1024m"
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

Command usage::

  $ /opt/UShareSoft/uforge/bin/runjob.py profile_name arg1 arg2

where:

	* ``profile_name`` is the name of the profile
	* ``arg1...argn`` is the list of arguments to forward to the process this profile is to be applied to (defined in "exec" element)

Including an Override
~~~~~~~~~~~~~~~~~~~~~

You can include a profile that will override a process in a profile.

The following is an example of a profile that includes an override profile called ``low_prio``

.. code-block:: javascript

  "my_process": {
    "exec": "/opt/UShareSoft/uforge/tools/demo.bin",
    "include": "low_prio",
    "sudo": true
    },


Tuning for Migration Projects
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When migrating Linux-based systems, UForge scans the filesystem.  In certain cases where the filesystem contains more than 300K files, you may need to increase the Java heap memory of some UForge services.  The example below illustrates increasing the Java heap memory to 3GB (or more).

.. note:: On multi-node UForge platforms, this modification must be done on the compute nodes.

.. note:: If you modify the amount of memory dedicated to the Java Virtual Machine in the ``webserver_uforge_services`` section of the ``services_conf.json`` file, you must restart Tomcat webserver in order for the modification to be effective.

.. code-block:: javascript

    "create_vm": {
        "exec": "/opt/UShareSoft/uforge/tools/createimage/createvm.sh",
        "sudo": false,
        "ionice": {
            "class": 2,
            "level": 7
        },
        "jvm": {
            "options": [
                "-XX:MaxMetaspaceSize=512m",
                "-Xmx3096m",
                "-Xms512m"
            ],
            "sys-properties": {
                "jna.library.path": "/opt/UShareSoft/uforge/lib",
                "log.filename": "BuildImageEnv.log"
            },
            "proxy": true
        },
        "nice": {
            "niceness": 15
        }
    },
    "create_iso": {
        "exec": "/opt/UShareSoft/uforge/tools/createimage/createiso.sh",
        "sudo": false,
        "ionice": {
            "class": 2,
            "level": 7
        },
        "jvm": {
            "options": [
                "-XX:MaxMetaspaceSize=512m",
                "-Xmx3096m",
                "-Xms512m"
            ],
            "sys-properties": {
                "jna.library.path": "/opt/UShareSoft/uforge/lib",
                "log.filename": "BuildImageEnv.log"
            },
            "proxy": true
        },
        "nice": {
            "niceness": 15
        }
    },
    "scan_vm_sudo": {
        "exec": "/opt/UShareSoft/uforge/tools/migratevm/migratevm.sh",
        "sudo": true,
        "ionice": {
            "class": 2,
            "level": 7
        },
        "jvm": {
            "options": [
                "-XX:MaxMetaspaceSize=512m",
                "-Xmx3096m",
                "-Xms512m"
            ],
            "sys-properties": {
                "jna.library.path": "/opt/UShareSoft/uforge/lib",
                "log.filename": "ScansEnv.log"
            },
            "proxy": true
        },
        "nice": {
            "niceness": 15
        }
    },
    "webserver_uforge_services": {
        "jvm": {
            "options": [
                "-Djava.awt.headless=true",
                "-Dfile.encoding=UTF-8",
                "-server",
                "-Xms500m",
                "-Xmx3096m",
                "-XX:NewSize=256m",
                "-XX:MaxNewSize=1024m",
                "-XX:MetaspaceSize=64m",
                "-XX:MaxMetaspaceSize=4096m"
            ],
            "sys-properties": {
                "jna.library.path": "/opt/UShareSoft/uforge/lib"
            },
            "proxy": true
        }
    },




