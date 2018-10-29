.. Copyright 2018 FUJITSU LIMITED

.. _machine-info:

Retrieving Logs Using machine_info Script
-----------------------------------------

**machine_infos.sh** is a shell script which can be launched on a UForge AppCenter machine, in order to collect various information about the hardware and software configuration of the machine it is launched on, as well as the scan reports and the logs of many kinds of jobs. It can be used to help diagnose what may have gone wrong, and/or to help find out what has changed on a machine between two executions of the script. For this reason, the archives have the hostname of the forge in their file name, as well as the date, time and timezone.

This information is output to a series of files, which are then grouped into one or more .tar.gz archive(s), depending on the command-line options used.

As the script may take up to several minutes to execute, an on-screen display indicates the progress of the various tasks.

Single-node and Multi-node Operation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This script is meant to be usable on a single-node UForge and on multi-node UForge configurations alike, and also on any node in a multi-node configuration. However, not all information-gathering tasks can be performed on every node (for example, database-related information can only be retrieved from the UForge's DB server). Consequently, in order to avoid the complexity and possible security concerns incured by remotely querying through SSH connections the information that is not directly available on the node the script is launched on, users can launch the script on any node, but only the information relevant to that node is provided, as well as information common to all nodes in the UForge. For this reason, the hostname of the node is automatically inserted in the archives' file names.


Usage
~~~~~

machine_infos.sh [-h] [-n|-i] [-o|-a] [<customstring>]

The arguments are:

  * ``-h`` : displays a short help message.
  * ``-n`` : assumes all answers are 'no' for a non-interactive operation and the shortest possible execution time : already existing files are not regenerated, and the longest parts are skipped. Temporary files are not deleted upon completion.
  * ``-i`` : makes the script run interactively and prompts the user each time, allowing for significant time saving.

  Options ``-n`` and ``-i`` are mutually exclusive. Without them, the script runs in non-interactive mode, with all answers assumed to be 'yes'. All files are generated, even if they already exist, ensuring the most up to date information, at the expense of a longer execution time. Temporary files are deleted without asking upon completion.

  * ``-o`` : *only* collects scan reports and OAR job logs.
  * ``-a`` : same as above (``-o``) *plus* the normal (default) behaviour.

If the script is launched with an optional custom string on the command line, that custom string will be inserted in the name of the archive created by the script to group all generated files.
  
If contradictory options, such as ``-i`` and ``-n``, or ``-a`` and ``-o``, are used at the same time, only the last one will be considered.

Example
~~~~~~~

The following is a sample output when ``machine_infos.sh`` is launched on a multi-node UForge installation, in default operation mode.

.. code-block:: shell

  [root@ws-3_8 ~]# ./machine_infos.sh

  This is 'machine_infos.sh' version 3.8-6.
  Default mode. 

  System                : CentOS Linux release 7.4.1708 (Core) 
  Kernel                : 3.10.0-693.11.6.el7.x86_64
  This machine has      : 1 network interface card (ens160)
  hostname              : ws-3_8 (10.201.11.151)

  This is a multi-nodes UForge installation :
  - 10.201.11.150 db proxy oar-server ldap-server rabbitmq-server
  - 10.201.11.151 ws1 idm-server idm1 ws-3_8
  - 10.201.11.160 oarnode1
  - 10.201.11.161 oarnode2
  - 10.201.11.170 ui1

  UForge version        : 3.8.fp7-1

  dmesg                 : done -> dmesg.txt
  Last connexions       : done -> last.txt
  ifconfig -a           : done -> ifconfig.txt
  CPU info              : done -> cpuinfo.txt
  Mem info              : done -> meminfo.txt
  SysV services         : done -> sysv-services.txt
  systemd services      : done -> systemd-services.txt
  Time and date         : done -> several files
  Security              : done -> several files
  Disks and partitions  : done -> several files
  Various infos from DB : not a DB node
  Miscellaneous         : done -> several files
  Packages              : done -> several files (took 2'46")
  Updates               : done -> several files (took 0'11")
  Services              : done -> several files
  Processes and ports   : done -> several files (took 0'28")
  Logs                  : done -> several files (took 1'21")
  Miscellaneous         : done -> several files

  MariaDB/MySQL info    : current node is no DB node
  OpenDJ info           : current node is no OpenDJ node
  RabbitMQ server       : current node is no RabbitMQ server
  event controller      : current node has no event controller

  Gathering informations about UForge via the CLI : 
  - Operating systems       : done -> uforge_os_list.txt
  - Organisation OS         : done -> uforge_org_os_list.txt
  - Organisation formats    : done -> uforge_org_format_list.txt
  - User accounts list      : time out error (too many users in DB ?)
  - User accounts infos     : done -> uforge_user_info.txt
  - Users OS list           : done -> uforge_user_os_list.txt
  - Users formats list      : done -> uforge_user_targetformat_list.txt
  - Users platforms list    : done -> uforge_user_targetplatform_list.txt
  - Users roles list        : done -> uforge_user_role_list.txt
  - Subscriptions list      : done -> uforge_subscription_list.txt
  - Subscriptions details   : done -> uforge_subscription_info.txt
  - Repositories list       : done -> uforge_org_repo_list.txt
  - Org repos OSes list     : done -> uforge_org_repo_os_list.txt (took 14'9").

  - OS milestones          
    - Debian 7 x86_64                        : done
    - Debian 7 i386                          : done
    - CentOS 7 x86_64                        : done
    - CentOS 6 x86_64                        : done
    - Debian 6 x86_64                        : done
    - Debian 6 i386                          : done
    - Debian 8 x86_64                        : done
    - CentOS 5 i386                          : done
    - CentOS 5 x86_64                        : done
    - CentOS 6 i386                          : done
    - Debian 8 i386                          : done
      done -> uforge_os_milestone_list.txt (took 2'8").

  OAR nodes infos       : done -> oarnodes.txt & oarstat.txt

  Archive name          : uforge-support-ws-3_8-2018-10-16-10-09.tgz
  Archive location      : /tmp
  Archive size          : 160M (uncompressed size : 1.2G)

  Temp files cleanup    : done

