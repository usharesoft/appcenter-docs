.. Copyright 2016 FUJITSU LIMITED

.. _getting-support:

Getting Support
---------------

If you require support for your UForge platform, please contact:

	support [@] usharesoft [dot] com

In order to help us understand your issue.  Please include any logs pertinant to the issue you are having.  

To help gather information of the UForge platform, we have included a script you can run on the UForge platform instances.

To run the script as superuser:

.. code-block:: bash

	$ /opt/UShareSoft/uforge/tools/support/machine_infos.sh

The script recuperates the logs from the main services that are running on the instance where the script is launched and creates an archive in ``/tmp``, with the name starting ``uforge-support-``.  This archive can be sent to our support team as part of your support request.

