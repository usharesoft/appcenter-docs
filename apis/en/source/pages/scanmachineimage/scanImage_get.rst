.. Copyright 2017 FUJITSU LIMITED

.. _scanImage-get:

scanImage_get
-------------

.. function:: GET /users/{uid}/scannedinstances/{siid}/scans/{sid}/images/{sitid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.4``

Retrieves the meta-data of a machine image generated from a scan.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``migration_generate``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``siid`` (required): the id of the :ref:`scannedinstance-object`
* ``sid`` (required): the id of the :ref:`scan-object`
* ``sitid`` (required): the id of the :ref:`image-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/scannedinstances/{siid}/scans/{sid}/images/{sitid}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`scannedinstance-object`
	 * :ref:`scan-object`
	 * :ref:`machinescaninstance-api-resources`
	 * :ref:`machinescan-api-resources`
	 * :ref:`scanImage-generate`
	 * :ref:`scanImage-getAll`
	 * :ref:`scanImage-download`
	 * :ref:`scanImage-downloadFile`
	 * :ref:`scanImageGeneration-cancel`
	 * :ref:`scanImageGeneration-delete`
	 * :ref:`scanImageGenerationStatus-get`
	 * :ref:`scanImage-publish`
	 * :ref:`scanPublishedImage-get`
	 * :ref:`scanPublishedImage-delete`
	 * :ref:`scanPublishedImageStatus-get`
	 * :ref:`scanPublishedImage-cancel`
