.. Copyright FUJITSU LIMITED 2016-2019

.. _machineImage-generate:

machineImage_generate
---------------------

.. function:: POST /users/{uid}/appliances/{aid}/images

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Request to generate a machine image from an appliance. 

This response body is an ``image ticket`` that provides the meta-data of the machine image that is to be generated.  The actual generation is done asynchronously.  To poll the status of this generation, use :ref:`machineImageStatus-get`. 

Once complete, the machine image can be downloaded if the ``compressed`` flag was provided in the request. 

To cancel a generation use :ref:`machineImageGeneration-cancel` 

.. note:: to generate a machine image, the ``appliance`` must have as a minimum an ``os profile``.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``image_generate``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`image-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/images" -X POST \
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

	 * :ref:`appliance-object`
	 * :ref:`applianceImage-publish`
	 * :ref:`image-object`
	 * :ref:`imagepkgs-object`
	 * :ref:`machineImageFile-download`
	 * :ref:`machineImageGeneration-cancel`
	 * :ref:`machineImagePkg-getAll`
	 * :ref:`machineImagePublish-cancel`
	 * :ref:`machineImagePublishedStatus-get`
	 * :ref:`machineImagePublishedStatus-getAll`
	 * :ref:`machineImagePublished-delete`
	 * :ref:`machineImagePublished-deleteAll`
	 * :ref:`machineImagePublished-download`
	 * :ref:`machineImagePublished-get`
	 * :ref:`machineImagePublished-getAll`
	 * :ref:`machineImageStatus-get`
	 * :ref:`machineImageStatus-getAll`
	 * :ref:`machineImage-delete`
	 * :ref:`machineImage-deleteAll`
	 * :ref:`machineImage-download`
	 * :ref:`machineImage-downloadFile`
	 * :ref:`machineImage-get`
	 * :ref:`machineImage-getAll`
	 * :ref:`machineImage-getPlatformTools`
	 * :ref:`machineImage-publish`
	 * :ref:`machineImage-regenerate`
	 * :ref:`scanImage-getPlatformTools`
