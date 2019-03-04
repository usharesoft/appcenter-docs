.. Copyright FUJITSU LIMITED 2016-2019

.. _partitionTableLogicalGroup-delete:

partitionTableLogicalGroup_delete
---------------------------------

.. function:: DELETE users/{uid}/appliances/{aid}/installProfile/{ipid}/pt/{ptid}/groups/{gid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 2.1``

Removes a logical group from a partitioning table.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object` that created the appliance
* ``gid`` (required): the id of the :ref:`logicalgroup-object`
* ``ptid`` (required): the id of the :ref:`partitiontable-object`
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/apiusers/{uid}/appliances/{aid}/installProfile/{ipid}/pt/{ptid}/groups/{gid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`appliancepartitiontabledisk-api-resources`
	 * :ref:`appliancepartitiontablediskpartition-api-resources`
	 * :ref:`appliancepartitiontablelogicalvolume-api-resources`
	 * :ref:`logicalgroup-object`
	 * :ref:`partitionTableLogicalGroup-create`
	 * :ref:`partitionTableLogicalGroup-deleteAll`
	 * :ref:`partitionTableLogicalGroup-get`
	 * :ref:`partitionTableLogicalGroup-getAll`
	 * :ref:`partitionTableLogicalGroup-update`
	 * :ref:`partitiontable-object`
