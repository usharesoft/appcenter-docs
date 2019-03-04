.. Copyright FUJITSU LIMITED 2016-2019

.. _machineImagePkg-getAll:

machineImagePkg_getAll
----------------------

.. function:: GET /users/{uid}/appliances/{aid}/images/{itid}/pkgs

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.2``

Retrieves all the native packages contained in the machine image. 

This list includes all the native packages in the appliance's os profile that this machine image was created from as well as all the packages added after resolving package dependencies during the generation phase.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``itid`` (required): the id of the :ref:`image-object`
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/images/{itid}/pkgs" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`applianceImage-publish`
	 * :ref:`image-object`
	 * :ref:`imagepkgs-object`
	 * :ref:`machineImageGeneration-cancel`
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
	 * :ref:`machineImage-generate`
	 * :ref:`machineImage-get`
	 * :ref:`machineImage-getPlatformTools`
	 * :ref:`machineImage-publish`
	 * :ref:`machineImage-regenerate`
	 * :ref:`scanImage-getPlatformTools`
