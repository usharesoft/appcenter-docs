.. Copyright FUJITSU LIMITED 2016-2019

.. _partitionTableBtrfsSubvolume-getAll:

partitionTableBtrfsSubvolume_getAll
-----------------------------------

.. function:: GET users/{uid}/appliances/{aid}/installProfile/{ipid}/pt/{ptid}/subvolumes

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.8.5``

Retrieves all the btrfs subvolumes for a partitioning table. 

A list of :ref:`btrfssubvolume-object` objects are returned.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object` that created the appliance
* ``ptid`` (required): the id of the :ref:`partitiontable-object`
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/apiusers/{uid}/appliances/{aid}/installProfile/{ipid}/pt/{ptid}/subvolumes" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`appliancepartitiontabledisk-api-resources`
	 * :ref:`appliancepartitiontablediskpartition-api-resources`
	 * :ref:`btrfssubvolume-object`
	 * :ref:`partitionTableBtrfsSubvolume-create`
	 * :ref:`partitionTableBtrfsSubvolume-delete`
	 * :ref:`partitionTableBtrfsSubvolume-deleteAll`
	 * :ref:`partitionTableBtrfsSubvolume-get`
	 * :ref:`partitionTableBtrfsSubvolume-update`
	 * :ref:`partitiontable-object`
