.. Copyright 2018-2019 FUJITSU LIMITED

.. _elk:

Configuring UForge to Send Logs to ELK
---------------------------------------

It is possible to visualize UForge logs in a dedicated tool: an ELK server (ElasticSearch, Logstash, Kibana). ELK centralizes all the logs and offers the possibility to navigate and search through the logs. It allows you to analyze and visualize the logs. If you have an ELK server installed, you can configure UForge so that UForge logs are sent to your ELK server.

UForge logs retrieval can be configured as follows:

		.. note:: The following steps need to be done on each node of your platform.

  #. Edit the file ``/etc/UShareSoft/uforge/uforge.conf``. Change the value of ``FILEBEAT_SERVICE_ENABLED`` to ``true``.

  #. Edit the file ``/etc/filebeat/filebeat.yml`` and put the IP and port of your ELK server in the section:

      .. code-block:: shell

        output.logstash:
          hosts: ["#LOGSTASH_HOST_MARKER:#LOGSTASH_PORT_MARKER"]

  #. Launch the following script on every node:: 

      /opt/UShareSoft/uforge/tools/update_scripts/uforge_update.sh

Your UForge will now automatically send logs to your ELK server.

To update the IP or port of the ELK server, edit the file ``/etc/filebeat/filebeat.yml``. Change the value, and restart filebeat service on every node using the command ``systemctl restart filebeat``.
