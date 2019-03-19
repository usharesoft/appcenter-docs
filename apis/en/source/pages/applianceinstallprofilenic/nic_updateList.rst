.. Copyright FUJITSU LIMITED 2016-2019

.. _nic-updateList:

nic_updateList
--------------

.. function:: PUT /users/{uid}/appliances/{aid}/installProfile/{ipid}/nics

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.7``

Updates the meta-data information of a list of network interface cards. 

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

A :ref:`nics-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/installProfile/{ipid}/nics" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:nic xmlns:ns0="http://www.usharesoft.com/uforge">
		<type>ETHERNET</type>
		<ipv4Method>AUTOMATIC</ipv4Method>
		<ipv6Method>AUTOMATIC</ipv6Method>
	</ns0:nic>


.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`installprofile-object`
	 * :ref:`nic-object`
	 * :ref:`nic-create`
	 * :ref:`nic-delete`
	 * :ref:`nic-get`
	 * :ref:`nic-getAll`
	 * :ref:`nic-update`
	 * :ref:`user-object`
