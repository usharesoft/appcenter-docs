.. Copyright 2016 FUJITSU LIMITED

.. _scanImage-downloadFile:

scanImage_downloadFile
----------------------

.. function:: GET /users/{uid}/scannedinstances/{siid}/scans/{sid}/images/{itid}/downloads/{fileName}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``*/*``
	* Since: ``UForge 3.4``

Downloads a generated machine image from a scan. 

This request is the same as :ref:`scanImage-download` 

.. note:: You can only download a generated machine image if the initial generation request included the ``compress`` flag.  For more information, see :ref:`scanImage-generate`. 

The machine image can be downloaded without authentication if an ``downloadId`` is added as a ``query parameter``.  To retrieve the downloadId, use :ref:`scanImage-get`. 

.. note:: The ``downloadId`` can only be used once, afterwards it expires, and a new ``downloadId`` must be retrieved.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``false``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object`
* ``fileName`` (required): the file name of the image to download
* ``siid`` (required): the id of the :ref:`scannedinstance-object`
* ``itid`` (required): the id of the :ref:`image-object`
* ``sid`` (required): the id of the :ref:`scan-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "/users/{uid}/scannedinstances/{siid}/scans/{sid}/images/{itid}/downloads/{fileName}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`scannedinstance-object`
	 * :ref:`scan-object`
	 * :ref:`machinescaninstance-api-resources`
	 * :ref:`machinescan-api-resources`
	 * :ref:`scanImage-generate`
	 * :ref:`scanImage-getAll`
	 * :ref:`scanImage-get`
	 * :ref:`scanImage-download`
	 * :ref:`scanImageGeneration-cancel`
	 * :ref:`scanImageGenerationStatus-get`
	 * :ref:`scanImage-publish`
	 * :ref:`scanPublishedImage-get`
	 * :ref:`scanPublishedImage-delete`
	 * :ref:`scanPublishedImageStatus-get`
	 * :ref:`scanPublishedImage-cancel`
