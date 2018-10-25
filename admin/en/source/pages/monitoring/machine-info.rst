.. Copyright 2018 FUJITSU LIMITED

.. _machine-info:

Using machine_info Script
-------------------------

**machine_infos.sh** is a shell script meant to be launched on a UForge AppCenter machine, in order to collect various information about the hardware and software configuration of the machine it is launched on, as well as the scan reports and the logs of many kinds of jobs. It can be used to help diagnose what may have gone wrong, and/or to help find out what has changed on a machin between two executions of the script. For this reason, the archives have the hostname of the forge in their file name, as well as the date, time and timezone.

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