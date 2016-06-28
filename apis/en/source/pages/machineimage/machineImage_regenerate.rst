.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _machineImage-regenerate:

machineImage_regenerate
-----------------------

.. function:: POST /users/{uid}/appliances/{aid}/images/{itid}

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.2``

Request to re-generate a machine image from a previous generation request.  The meta-data of the previous generation request will be re-used. 

This response body is a new ``image ticket`` providing the meta-data of the machine image that is to be generated.  The actual generation is done asynchronously.  To poll the status of this generation, use :ref:`machineImageStatus-get`. 

Once complete, the machine image can be downloaded if the ``compressed`` flag was provided in the request. 

To cancel a generation use :ref:`machineImageGeneration-cancel` 

.. note:: to generate a machine image, the ``appliance`` must have as a minimum an ``os profile``.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``image_generate``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object`
* ``itid`` (required): the id of the :ref:`image-object`
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "/users/{uid}/appliances/{aid}/images/{itid}" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`image-object`
	 * :ref:`imagepkgs-object`
	 * :ref:`machineImage-deleteAll`
	 * :ref:`machineImage-delete`
	 * :ref:`machineImage-download`
	 * :ref:`machineImage-downloadFile`
	 * :ref:`machineImage-generate`
	 * :ref:`machineImage-get`
	 * :ref:`machineImage-getAll`
	 * :ref:`machineImageGeneration-cancel`
	 * :ref:`machineImageStatus-getAll`
	 * :ref:`machineImageStatus-get`
	 * :ref:`machineImagePkg-getAll`
	 * :ref:`machineImage-publish`
	 * :ref:`machineImagePublish-cancel`
	 * :ref:`machineImagePublished-get`
	 * :ref:`machineImagePublished-getAll`
	 * :ref:`machineImagePublished-delete`
	 * :ref:`machineImagePublished-deleteAll`
	 * :ref:`machineImagePublished-download`
	 * :ref:`machineImagePublishedStatus-get`
	 * :ref:`machineImagePublishedStatus-getAll`
	 * :ref:`applianceImage-publish`
