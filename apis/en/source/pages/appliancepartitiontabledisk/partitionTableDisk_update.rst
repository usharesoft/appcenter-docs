.. Copyright 2017 FUJITSU LIMITED

.. _partitionTableDisk-update:

partitionTableDisk_update
-------------------------

.. function:: PUT users/{uid}/appliances/{aid}/installProfile/{ipid}/pt/{ptid}/disks/{did}

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 2.1``

Updates the information of a disk in a partitioning table. 

Please refer to :ref:`disk-object` for a complete list of all the ``partition table disk`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object` that has created the appliance
* ``ptid`` (required): the id of the :ref:`partitiontable-object`
* ``aid`` (required): the id of the :ref:`appliance-object`
* ``did`` (required): the id of the :ref:`disk-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`disk-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/apiusers/{uid}/appliances/{aid}/installProfile/{ipid}/pt/{ptid}/disks/{did}" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<disk xmlns:ns0="http://www.usharesoft.com/uforge">
		<name>sda</name>
		<partitionType>MSDOS</partitionType>
		<partition>
			<name>boot</name>
			<mpoint>/boot</mpoint>
			<size>256</size>
			<label>/boot</label>
			<fstype>ext3</fstype>
		</partition>
	</disk>


.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`appliancepartitiontablediskpartition-api-resources`
	 * :ref:`appliancepartitiontablelogicalgroup-api-resources`
	 * :ref:`appliancepartitiontablelogicalvolume-api-resources`
	 * :ref:`disk-object`
	 * :ref:`partitionTableDisk-create`
	 * :ref:`partitionTableDisk-delete`
	 * :ref:`partitionTableDisk-deleteAll`
	 * :ref:`partitionTableDisk-get`
	 * :ref:`partitionTableDisk-getAll`
	 * :ref:`partitiontable-object`
