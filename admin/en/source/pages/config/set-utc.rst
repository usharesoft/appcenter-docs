.. Copyright 2017-2019 FUJITSU LIMITED

.. _set-utc:

Setting the Creation Date and Time
--------------------------------------

By default, the creation date and time for all objects will be set to local time. In order to set the default timezone to UTC, you should:

	1. Open the file ``/etc/my.cnf``
	2. Under the ``mysqld`` section add the following line::

		default_time_zone='+00:00'  

	3. Restart the service as follows::

		systemctl restart mysql
