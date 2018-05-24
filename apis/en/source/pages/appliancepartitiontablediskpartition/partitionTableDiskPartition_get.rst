.. Copyright 2018 FUJITSU LIMITED

.. _partitionTableDiskPartition-get:

partitionTableDiskPartition_get
-------------------------------

.. function:: GET users/{uid}/appliances/{aid}/installProfile/{ipid}/pt/{ptid}/disks/{did}/partitions/{pid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 2.1``

Retrieves the information of a physical partition in a disk.

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

	curl "https://uforge.example.com/apiusers/{uid}/appliances/{aid}/installProfile/{ipid}/pt/{ptid}/disks/{did}/partitions/{pid}" -X GET \
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
	 * :ref:`partitionTableDiskPartition-delete`
	 * :ref:`partitionTableDiskPartition-deleteAll`
	 * :ref:`partitionTableDiskPartition-getAll`
	 * :ref:`partitionTableDiskPartition-update`
	 * :ref:`partitiontable-object`
