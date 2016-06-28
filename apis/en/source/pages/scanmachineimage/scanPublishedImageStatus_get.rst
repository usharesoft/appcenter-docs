.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _scanPublishedImageStatus-get:

scanPublishedImageStatus_get
----------------------------

.. function:: GET /users/{uid}/scannedinstances/{siid}/scans/{sid}/images/{itid}/pimages/{pitid}/status

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.4``

Retrieve the publish status of all the published machine images for an appliance.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``migration_publish``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object`
* ``siid`` (required): the id of the :ref:`scannedinstance-object`
* ``itid`` (required): the id of the :ref:`image-object`
* ``pitid`` (required): the id of the :ref:`publishimage-object`
* ``sid`` (required): the id of the :ref:`scan-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "/users/{uid}/scannedinstances/{siid}/scans/{sid}/images/{itid}/pimages/{pitid}/status" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`scannedinstance-object`
	 * :ref:`scan-object`
	 * :ref:`machinescaninstance-api-resources`
	 * :ref:`machinescan-api-resources`
	 * :ref:`scanImage-generate`
	 * :ref:`scanImage-getAll`
	 * :ref:`scanImage-get`
	 * :ref:`scanImageGeneration-cancel`
	 * :ref:`scanImageGeneration-delete`
	 * :ref:`scanImageGenerationStatus-get`
	 * :ref:`scanImage-publish`
	 * :ref:`scanPublishedImage-get`
	 * :ref:`scanPublishedImage-delete`
	 * :ref:`scanPublishedImage-cancel`
