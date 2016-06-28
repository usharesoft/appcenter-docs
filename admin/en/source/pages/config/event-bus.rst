.. Copyright 2016 FUJITSU LIMITED

.. _event-bus:

Using the Event Bus
-------------------

UForge can be easily extended to interact and integrate with other products and services via an event bus service.  Whenever a POST, PUT or DELETE request to UForge, a corresponding event is sent to the event bus (RabbitMQ).  Custom plugins can be built to listen for these events and trigger custom business logic or call out to other 3rd party systems.

The event bus service is based on RabbitMQ.  Custom plugins are known as “consumers”.

Custom plugins (RabbitMQ consumers) can be written in many different languages including:

	* Java
	* Ruby
	* C
	* Python
	* Erlang
	* PHP
	* Node.js etc

RabbitMQ is a message broker.  In essence, it accepts messages from “producers” and delivers them to “consumers”.  In-between, it can route, buffer and persist messages, known as the “queue”.  

When a POST, PUT or DELETE request is sent to the web service, then UForge creates a message (the producer) and posts this to a routing service, called an exchange.  This exchange is configured to publish messages to the UForge queue.  When writing a custom plugin (consumer), it registers itself to this queue. 

Administrators can also reconfigure the event bus routing service to adapt to more complex workflows.  This is done in the event bus administration UI and use the root account of the UForge service, at:

http://youripaddress:15672
Login: uss-admin
Password: administration password

Refer to the RabbitMQ documentation for more information: `https://www.rabbitmq.com/documentation.html <https://www.rabbitmq.com/documentation.html>`_ 

Installing RabbitMQ
~~~~~~~~~~~~~~~~~~~

In order to install RabbitMQ you must:

1. Retrieve and install the rpm.

.. code-block:: shell

	wget http://packages.erlang-solutions.com/erlang-solutions-1.0-1.noarch.rpm
	rpm -Uvh erlang-solutions-1.0-1.noarch.rpm
	yum -y install erlang
	wget https://www.rabbitmq.com/releases/rabbitmq-server/v3.5.3/rabbitmq-server-3.5.3-1.noarch.rpm
	rpm --import https://www.rabbitmq.com/rabbitmq-signing-key-public.asc
	yum -y install rabbitmq-server-3.5.3-1.noarch.rpm
	chkconfig rabbitmq-server on

2. Once you have installed RabbitMQ you must update the information in ``uforge.conf`` in order to configure the uri, admin, and password

.. code-block:: shell

	w/etc/UShareSoft/uforge/uforge.conf
	# rabbitmq server uri
	RABBITMQ_URI=amqp://uss-admin:uforgedemo@rabbitmq-server/uss
	# RABBITMQ_SERVER admin user
	UFORGE_RABBITMQ_ADMIN=uss-admin
	#RABBITMQ_SERVER admin password
	UFORGE_RABBITMQ_ADMIN_PWD=uforgedemo

3. Start RabbitMQ and the EventController::

	service rabbitmq-server start service eventcontroller start


Writing a Custom Plugin (Consumer)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Prior to writing a custom plugin, it is important to understand the producer messages created by the UForge AppCenter.  When a request is sent to the web service (POST, PUT or DELETE) the web service creates a producer message.  The contents of each message is described in an .xsd file here: `https://www.usharesoft.com/resources/docs/ <https://www.usharesoft.com/resources/docs/>`_ 

When creating a plugin, you will have access to all the attributes in a message.  The plugin will contain the custom business logic required.

By default, this mechanism is used to send notification emails.  For examples, refer to the RabbitMQ tutorials: `https://www.rabbitmq.com/getstarted.html <https://www.rabbitmq.com/getstarted.html>`_  

Registering a Custom Plugin to Event Bus
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To register a custom plugin, you must provide:
	* The event bus URI, can be found in the UForge configuration file: /etc/UShareSoft/uforge/uforge.conf
	* The name of the queue

This information can be found in the RabbitMQ administration console.  

1. Login to the administration console

	.. code-block:: shell

		http://youripaddress:15672
		Login: uss-admin
		Password: administration password

2. Go to the Queues Tab, you will see the available queues.  The default queue is ``distrotools``.

.. image:: /images/event-bus.jpg

