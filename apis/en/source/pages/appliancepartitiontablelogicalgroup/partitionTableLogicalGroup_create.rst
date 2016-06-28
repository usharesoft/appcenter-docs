.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _partitionTableLogicalGroup-create:

partitionTableLogicalGroup_create
---------------------------------

.. function:: POST users/{uid}/appliances/{aid}/installProfile/{ipid}/pt/{ptid}/groups

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 2.1``

Creates a new logical group in a partitioning table. 

Please refer to :ref:`logicalgroup-object` for a complete list of all the ``logical group`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object` that has created the appliance
* ``ptid`` (required): the id of the :ref:`partitiontable-object`
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`logicalGroup-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "http://www.example.com/apiusers/{uid}/appliances/{aid}/installProfile/{ipid}/pt/{ptid}/groups" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml



.. seealso::

	 * :ref:`appliancepartitiontabledisk-api-resources`
	 * :ref:`appliancepartitiontablediskpartition-api-resources`
	 * :ref:`appliancepartitiontablelogicalvolume-api-resources`
	 * :ref:`partitiontable-object`
	 * :ref:`appliance-object`
	 * :ref:`logicalgroup-object`
	 * :ref:`partitionTableLogicalGroup-getAll`
	 * :ref:`partitionTableLogicalGroup-delete`
	 * :ref:`partitionTableLogicalGroup-deleteAll`
	 * :ref:`partitionTableLogicalGroup-get`
	 * :ref:`partitionTableLogicalGroup-update`
