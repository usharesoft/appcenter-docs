.. Copyright 2018 FUJITSU LIMITED

.. _partitionTableDiskPartition-delete:

partitionTableDiskPartition_delete
----------------------------------

.. function:: DELETE users/{uid}/appliances/{aid}/installProfile/{ipid}/pt/{ptid}/disks/{did}/partitions/{pid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 2.1``

Removes a physical partition from a disk.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object` that created the appliance
* ``pid`` (required): the id of the :ref:`partition-object`
* ``ptid`` (required): the id of the :ref:`partitiontable-object`
* ``aid`` (required): the id of the :ref:`appliance-object`
* ``did`` (required): the id of the :ref:`disk-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/apiusers/{uid}/appliances/{aid}/installProfile/{ipid}/pt/{ptid}/disks/{did}/partitions/{pid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`appliancepartitiontablediskpartition-api-resources`
	 * :ref:`appliancepartitiontablelogicalgroup-api-resources`
	 * :ref:`appliancepartitiontablelogicalvolume-api-resources`
	 * :ref:`partition-object`
	 * :ref:`partitionTableDiskLogicalPartition-create`
	 * :ref:`partitionTableDiskLogicalPartition-delete`
	 * :ref:`partitionTableDiskLogicalPartition-deleteAll`
	 * :ref:`partitionTableDiskLogicalPartition-get`
	 * :ref:`partitionTableDiskLogicalPartition-getAll`
	 * :ref:`partitionTableDiskLogicalPartition-update`
	 * :ref:`partitionTableDiskPartition-create`
	 * :ref:`partitionTableDiskPartition-deleteAll`
	 * :ref:`partitionTableDiskPartition-get`
	 * :ref:`partitionTableDiskPartition-getAll`
	 * :ref:`partitionTableDiskPartition-update`
	 * :ref:`partitiontable-object`
