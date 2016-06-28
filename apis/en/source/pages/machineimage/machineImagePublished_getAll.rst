.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _machineImagePublished-getAll:

machineImagePublished_getAll
----------------------------

.. function:: GET /users/{uid}/appliances/{aid}/pimages

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 2.0``

Retrieve all the published machine images for an appliance.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object`
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "http://www.example.com/api/users/{uid}/appliances/{aid}/pimages" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`publishimage-object`
	 * :ref:`machineImage-deleteAll`
	 * :ref:`machineImage-delete`
	 * :ref:`machineImage-download`
	 * :ref:`machineImage-downloadFile`
	 * :ref:`machineImage-generate`
	 * :ref:`machineImage-publish`
	 * :ref:`machineImage-get`
	 * :ref:`machineImage-getAll`
	 * :ref:`machineImage-regenerate`
	 * :ref:`machineImageGeneration-cancel`
	 * :ref:`machineImageStatus-getAll`
	 * :ref:`machineImageStatus-get`
	 * :ref:`machineImagePublish-cancel`
	 * :ref:`machineImagePublished-get`
	 * :ref:`machineImagePublished-getAll`
	 * :ref:`machineImagePublished-delete`
	 * :ref:`machineImagePublished-deleteAll`
	 * :ref:`machineImagePublished-download`
	 * :ref:`machineImagePublishedStatus-get`
	 * :ref:`machineImagePublishedStatus-getAll`
	 * :ref:`applianceImage-publish`
