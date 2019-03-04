.. Copyright FUJITSU LIMITED 2016-2019

.. _partitionTableLogicalVolume-get:

partitionTableLogicalVolume_get
-------------------------------

.. function:: GET users/{uid}/appliances/{aid}/installProfile/{ipid}/pt/{ptid}/volumes/{vid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 2.1``

Retrieves the information of a logical volume.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``vid`` (required): the id of the :ref:`logicalvolume-object`
* ``uid`` (required): the user name (login name) of the :ref:`user-object` that created the appliance
* ``ptid`` (required): the id of the :ref:`partitiontable-object`
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/apiusers/{uid}/appliances/{aid}/installProfile/{ipid}/pt/{ptid}/volumes/{vid}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`appliancepartitiontabledisk-api-resources`
	 * :ref:`appliancepartitiontablediskpartition-api-resources`
	 * :ref:`appliancepartitiontablelogicalgroup-api-resources`
	 * :ref:`logicalvolume-object`
	 * :ref:`partitionTableLogicalVolume-create`
	 * :ref:`partitionTableLogicalVolume-delete`
	 * :ref:`partitionTableLogicalVolume-deleteAll`
	 * :ref:`partitionTableLogicalVolume-getAll`
	 * :ref:`partitionTableLogicalVolume-update`
	 * :ref:`partitiontable-object`
