.. Copyright FUJITSU LIMITED 2016-2019

.. _scanImage-generate:

scanImage_generate
------------------

.. function:: POST /users/{uid}/scannedinstances/{siid}/scans/{sid}/images

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.4``

Request to generate a machine image from a scan. 

This response body is an ``image ticket`` that provides the meta-data of the machine image that is to be generated.  The actual generation is done asynchronously.  To poll the status of this generation, use :ref:`scanImageGenerationStatus-get`. 

Once complete, the machine image can be downloaded if the ``compressed`` flag was provided in the request. 

To cancel a generation use :ref:`scanImageGeneration-cancel`

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``image_generate``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``siid`` (required): the id of the :ref:`scannedinstance-object`
* ``sid`` (required): the id of the :ref:`scan-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`image-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/scannedinstances/{siid}/scans/{sid}/images" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:image xmlns:ns0="http://www.usharesoft.com/uforge">
		<compress>true</compress>
		<targetFormat>
			<name>VirtualBox</name>
		</targetFormat>
		<installProfile>
			<memorySize>512</memorySize>
		</installProfile>
	</ns0:image>


.. seealso::

	 * :ref:`machinescan-api-resources`
	 * :ref:`machinescaninstance-api-resources`
	 * :ref:`scan-object`
	 * :ref:`scanImageGenerationStatus-get`
	 * :ref:`scanImageGeneration-cancel`
	 * :ref:`scanImageGeneration-delete`
	 * :ref:`scanImage-download`
	 * :ref:`scanImage-downloadFile`
	 * :ref:`scanImage-get`
	 * :ref:`scanImage-getAll`
	 * :ref:`scanImage-publish`
	 * :ref:`scanPublishedImageStatus-get`
	 * :ref:`scanPublishedImage-cancel`
	 * :ref:`scanPublishedImage-delete`
	 * :ref:`scanPublishedImage-get`
	 * :ref:`scannedinstance-object`
