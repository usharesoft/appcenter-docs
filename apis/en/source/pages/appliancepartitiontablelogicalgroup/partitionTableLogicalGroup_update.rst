.. Copyright 2018 FUJITSU LIMITED

.. _partitionTableLogicalGroup-update:

partitionTableLogicalGroup_update
---------------------------------

.. function:: PUT users/{uid}/appliances/{aid}/installProfile/{ipid}/pt/{ptid}/groups/{gid}

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 2.1``

Updates the information of a logical group. 

Please refer to :ref:`logicalgroup-object` for a complete list of all the ``logical group`` attributes.

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

A :ref:`logicalGroup-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/apiusers/{uid}/appliances/{aid}/installProfile/{ipid}/pt/{ptid}/groups/{gid}" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml



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
	 * :ref:`partitionTableLogicalGroup-getAll`
	 * :ref:`partitiontable-object`
