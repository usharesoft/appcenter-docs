.. Copyright FUJITSU LIMITED 2016-2019

.. _partitionTableBtrfsSubvolume-update:

partitionTableBtrfsSubvolume_update
-----------------------------------

.. function:: PUT users/{uid}/appliances/{aid}/installProfile/{ipid}/pt/{ptid}/subvolumes/{svid}

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.8.5``

Updates the information of a btrfs subvolume. 

Please refer to :ref:`btrfssubvolume-object` for a complete list of all the ``logical volume`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object` that created the appliance
* ``svid`` (required): the id of the :ref:`btrfssubvolume-object`
* ``ptid`` (required): the id of the :ref:`partitiontable-object`
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`btrfsSubvolume-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/apiusers/{uid}/appliances/{aid}/installProfile/{ipid}/pt/{ptid}/subvolumes/{svid}" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml



.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`appliancepartitiontabledisk-api-resources`
	 * :ref:`appliancepartitiontablediskpartition-api-resources`
	 * :ref:`btrfssubvolume-object`
	 * :ref:`partitionTableBtrfsSubvolume-create`
	 * :ref:`partitionTableBtrfsSubvolume-delete`
	 * :ref:`partitionTableBtrfsSubvolume-deleteAll`
	 * :ref:`partitionTableBtrfsSubvolume-get`
	 * :ref:`partitionTableBtrfsSubvolume-getAll`
	 * :ref:`partitiontable-object`
