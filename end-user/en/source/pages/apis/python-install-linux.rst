.. Copyright 2019 FUJITSU LIMITED

For Linux
---------

First, you need to install extra packages on your system, and then install the SDK package.

Debian
~~~~~~

.. code-block:: sh

	$ apt-get install python-dev gcc
	$ pip install uforge-python-sdk


Red Hat and CentOS
~~~~~~~~~~~~~~~~~~

.. code-block:: sh

	$ yum install gcc python-devel
	$ pip install uforge-python-sdk


Upgrading the SDK
~~~~~~~~~~~~~~~~~

To upgrade an already installed SDK, run::

	$ pip install --upgrade uforge-python-sdk
