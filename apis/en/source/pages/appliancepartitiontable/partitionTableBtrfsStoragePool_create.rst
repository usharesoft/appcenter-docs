.. Copyright FUJITSU LIMITED 2016-2019

.. _partitionTableBtrfsStoragePool-create:

partitionTableBtrfsStoragePool_create
-------------------------------------

.. function:: POST users/{uid}/appliances/{aid}/installProfile/{ipid}/pt/{ptid}/pools

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.8.5``

Creates a new btrfs storage pool in a partitioning table. 

Please refer to :ref:`btrfsstoragepool-object` for a complete list of all the ``btrfs storage pool`` attributes.

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

A :ref:`btrfsStoragePool-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/apiusers/{uid}/appliances/{aid}/installProfile/{ipid}/pt/{ptid}/pools" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml



.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`appliancepartitiontabledisk-api-resources`
	 * :ref:`appliancepartitiontablediskpartition-api-resources`
	 * :ref:`btrfsstoragepool-object`
	 * :ref:`partitionTableBtrfsStoragePool-delete`
	 * :ref:`partitionTableBtrfsStoragePool-deleteAll`
	 * :ref:`partitionTableBtrfsStoragePool-getAll`
	 * :ref:`partitionTableBtrfsStoragePool-update`
	 * :ref:`partitiontable-object`
