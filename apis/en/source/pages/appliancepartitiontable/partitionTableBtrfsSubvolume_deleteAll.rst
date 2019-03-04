.. Copyright FUJITSU LIMITED 2016-2019

.. _partitionTableBtrfsSubvolume-deleteAll:

partitionTableBtrfsSubvolume_deleteAll
--------------------------------------

.. function:: DELETE users/{uid}/appliances/{aid}/installProfile/{ipid}/pt/{ptid}/subvolumes

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.8.5``

Removes all the btrfs subvolumes from a partitioning table.

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

	curl "https://uforge.example.com/apiusers/{uid}/appliances/{aid}/installProfile/{ipid}/pt/{ptid}/subvolumes" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`appliancepartitiontabledisk-api-resources`
	 * :ref:`appliancepartitiontablediskpartition-api-resources`
	 * :ref:`btrfssubvolume-object`
	 * :ref:`partitionTableBtrfsSubvolume-create`
	 * :ref:`partitionTableBtrfsSubvolume-delete`
	 * :ref:`partitionTableBtrfsSubvolume-get`
	 * :ref:`partitionTableBtrfsSubvolume-getAll`
	 * :ref:`partitionTableBtrfsSubvolume-update`
	 * :ref:`partitiontable-object`
