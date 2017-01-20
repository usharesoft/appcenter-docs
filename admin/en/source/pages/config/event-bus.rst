.. Copyright 2017 FUJITSU LIMITED

.. _event-bus:

Using the Event Bus
-------------------

UForge can be easily extended to interact and integrate with other products and services via an event bus service.  Whenever a ``POST``, ``PUT`` or ``DELETE`` request to UForge, a corresponding event is sent to the event bus (RabbitMQ).  Custom plugins can be built to listen for these events and trigger custom business logic or call out to other 3rd party systems.

The event bus service is based on RabbitMQ.  Custom plugins are known as "consumers".

Custom plugins (RabbitMQ consumers) can be written in many different languages including:

	* Java
	* Ruby
	* C
	* Python
	* Erlang
	* PHP
	* Node.js etc

RabbitMQ is a message broker.  In essence, it accepts messages from "producers" and delivers them to "consumers".  In-between, it can route, buffer and persist messages, known as the "queue".  

When a ``POST``, ``PUT`` or ``DELETE`` request is sent to the web service, then UForge creates a message (the producer) and posts this to a routing service, called an exchange.  This exchange is configured to publish messages to the UForge queue.  When writing a custom plugin (consumer), it registers itself to this queue. 

Administrators can also reconfigure the event bus routing service to adapt to more complex workflows.  This is done in the event bus administration UI and use the root account of the UForge service, at::

	http://youripaddress:15672
	Login: uss-admin
	Password: administration password

Refer to the RabbitMQ documentation for more information: `https://www.rabbitmq.com/documentation.html <https://www.rabbitmq.com/documentation.html>`_


Writing a Custom Plugin (Consumer)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Prior to writing a custom plugin, it is important to understand the producer messages created by the UForge AppCenter.  When a request is sent to the web service (``POST``, ``PUT`` or ``DELETE``) the web service creates a producer message with the contents of the DTO (data transfer object) that is sent as a response to the request.  The attributes for each DTO is described in the `APIs xsd file <apis:apis-index>`.

When creating a plugin, you will have access to all the attributes in a message.  The plugin will contain the custom business logic required.

By default, this mechanism is used to send notification emails.  For examples, refer to the RabbitMQ tutorials: `https://www.rabbitmq.com/getstarted.html <https://www.rabbitmq.com/getstarted.html>`_  

Registering a Custom Plugin to Event Bus
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To register a custom plugin, you must provide:
	* The event bus URI, can be found in the UForge configuration file: ``/etc/UShareSoft/uforge/uforge.conf``
	* The name of the queue

This information can be found in the RabbitMQ administration console.  

1. Login to the administration console:

	.. code-block:: shell

		http://youripaddress:15672
		Login: uss-admin
		Password: administration password

2. Go to the Queues Tab, you will see the available queues.  The default queue is ``distrotools``.

.. image:: /images/event-bus.jpg

