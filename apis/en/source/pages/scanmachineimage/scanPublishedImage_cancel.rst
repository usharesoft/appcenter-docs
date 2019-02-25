.. Copyright FUJITSU LIMITED 2016-2019

.. _scanPublishedImage-cancel:

scanPublishedImage_cancel
-------------------------

.. function:: DELETE /users/{uid}/scannedinstances/{siid}/scans/{sid}/images/{itid}/pimages/{pitid}/cancel

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.4``

Cancel a publish of a machine image to a cloud environment.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``migration_publish``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
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

	curl "https://uforge.example.com/api/users/{uid}/scannedinstances/{siid}/scans/{sid}/images/{itid}/pimages/{pitid}/cancel" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`machinescan-api-resources`
	 * :ref:`machinescaninstance-api-resources`
	 * :ref:`scan-object`
	 * :ref:`scanImageGenerationStatus-get`
	 * :ref:`scanImageGeneration-cancel`
	 * :ref:`scanImageGeneration-delete`
	 * :ref:`scanImage-generate`
	 * :ref:`scanImage-get`
	 * :ref:`scanImage-getAll`
	 * :ref:`scanImage-publish`
	 * :ref:`scanPublishedImageStatus-get`
	 * :ref:`scanPublishedImage-delete`
	 * :ref:`scanPublishedImage-get`
	 * :ref:`scannedinstance-object`
