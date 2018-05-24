.. Copyright 2018 FUJITSU LIMITED

.. _partitionTableLogicalGroup-getAll:

partitionTableLogicalGroup_getAll
---------------------------------

.. function:: GET users/{uid}/appliances/{aid}/installProfile/{ipid}/pt/{ptid}/groups

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 2.1``

Retrieves all the logical groups for a partitioning table. 

A list of :ref:`logicalgroup-object` objects are returned.

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

	curl "https://uforge.example.com/apiusers/{uid}/appliances/{aid}/installProfile/{ipid}/pt/{ptid}/groups" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`appliancepartitiontabledisk-api-resources`
	 * :ref:`appliancepartitiontablediskpartition-api-resources`
	 * :ref:`appliancepartitiontablelogicalvolume-api-resources`
	 * :ref:`logicalgroup-object`
	 * :ref:`partitionTableLogicalGroup-create`
	 * :ref:`partitionTableLogicalGroup-delete`
	 * :ref:`partitionTableLogicalGroup-deleteAll`
	 * :ref:`partitionTableLogicalGroup-get`
	 * :ref:`partitionTableLogicalGroup-update`
	 * :ref:`partitiontable-object`
