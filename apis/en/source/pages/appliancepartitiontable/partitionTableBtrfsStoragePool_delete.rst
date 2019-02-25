.. Copyright FUJITSU LIMITED 2016-2019

.. _partitionTableBtrfsStoragePool-delete:

partitionTableBtrfsStoragePool_delete
-------------------------------------

.. function:: DELETE users/{uid}/appliances/{aid}/installProfile/{ipid}/pt/{ptid}/pools/{plid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.8.5``

Removes a btrfs storage pool from a partitioning table.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object` that has created the appliance
* ``plid`` (required): the id of the :ref:`btrfsstoragepool-object`
* ``ptid`` (required): the id of the :ref:`partitiontable-object`
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/apiusers/{uid}/appliances/{aid}/installProfile/{ipid}/pt/{ptid}/pools/{plid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`appliancepartitiontabledisk-api-resources`
	 * :ref:`appliancepartitiontablediskpartition-api-resources`
	 * :ref:`btrfsstoragepool-object`
	 * :ref:`partitionTableBtrfsStoragePool-create`
	 * :ref:`partitionTableBtrfsStoragePool-deleteAll`
	 * :ref:`partitionTableBtrfsStoragePool-getAll`
	 * :ref:`partitionTableBtrfsStoragePool-update`
	 * :ref:`partitiontable-object`
