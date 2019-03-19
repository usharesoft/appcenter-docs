.. Copyright FUJITSU LIMITED 2016-2019

.. _nic-create:

nic_create
----------

.. function:: POST /users/{uid}/appliances/{aid}/installProfile/{ipid}/nics

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.7``

Creates a new network interface card (NIC) for an appliance. 

The NIC information is stored in the install profile of the appliance. 

Please refer to :ref:`nic-object` for a complete list of all the ``nic`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``ipid`` (required): the id of the :ref:`installprofile-object`
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`nic-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/installProfile/{ipid}/nics" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:nic xmlns:ns0="http://www.usharesoft.com/uforge">
		<type>ETHERNET</type>
		<ipv4Method>AUTOMATIC</ipv4Method>
		<ipv6Method>IGNORE</ipv6Method>
	</ns0:nic>


.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`installprofile-object`
	 * :ref:`nic-object`
	 * :ref:`nic-delete`
	 * :ref:`nic-get`
	 * :ref:`nic-getAll`
	 * :ref:`nic-update`
	 * :ref:`nic-updateList`
	 * :ref:`user-object`
