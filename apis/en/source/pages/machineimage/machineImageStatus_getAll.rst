.. Copyright 2017 FUJITSU LIMITED

.. _machineImageStatus-getAll:

machineImageStatus_getAll
-------------------------

.. function:: GET /users/{uid}/appliances/{aid}/images/statuses

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Retrieves the generation status of all the machine images for an appliance.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/images/statuses" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`applianceImage-publish`
	 * :ref:`image-object`
	 * :ref:`imagepkgs-object`
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
	 * :ref:`machineImage-delete`
	 * :ref:`machineImage-deleteAll`
	 * :ref:`machineImage-download`
	 * :ref:`machineImage-downloadFile`
	 * :ref:`machineImage-generate`
	 * :ref:`machineImage-get`
	 * :ref:`machineImage-getAll`
	 * :ref:`machineImage-publish`
	 * :ref:`machineImage-regenerate`
	 * :ref:`status-object`
