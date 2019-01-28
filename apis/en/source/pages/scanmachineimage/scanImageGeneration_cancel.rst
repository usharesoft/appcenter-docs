.. Copyright FUJITSU LIMITED 2016-2019

.. _scanImageGeneration-cancel:

scanImageGeneration_cancel
--------------------------

.. function:: DELETE /users/{uid}/scannedinstances/{siid}/scans/{sid}/images/{sitid}/status

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.4``

Cancels a running generation of a machine image from a scan.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``image_generate``

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

	curl "https://uforge.example.com/api/users/{uid}/scannedinstances/{siid}/scans/{sid}/images/{sitid}/status" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`machinescan-api-resources`
	 * :ref:`machinescaninstance-api-resources`
	 * :ref:`scan-object`
	 * :ref:`scanImageGenerationStatus-get`
	 * :ref:`scanImageGeneration-delete`
	 * :ref:`scanImage-download`
	 * :ref:`scanImage-downloadFile`
	 * :ref:`scanImage-generate`
	 * :ref:`scanImage-get`
	 * :ref:`scanImage-getAll`
	 * :ref:`scanImage-publish`
	 * :ref:`scanPublishedImageStatus-get`
	 * :ref:`scanPublishedImage-cancel`
	 * :ref:`scanPublishedImage-delete`
	 * :ref:`scanPublishedImage-get`
	 * :ref:`scannedinstance-object`
