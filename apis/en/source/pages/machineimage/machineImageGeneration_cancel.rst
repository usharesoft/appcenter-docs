.. Copyright FUJITSU LIMITED 2016-2019

.. _machineImageGeneration-cancel:

machineImageGeneration_cancel
-----------------------------

.. function:: DELETE /users/{uid}/appliances/{aid}/images/{itid}/status

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Cancels a running generation of a machine image.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``image_generate``

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

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/images/{itid}/status" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`applianceImage-publish`
	 * :ref:`image-object`
	 * :ref:`imagepkgs-object`
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
	 * :ref:`machineImage-generate`
	 * :ref:`machineImage-get`
	 * :ref:`machineImage-getAll`
	 * :ref:`machineImage-getPlatformTools`
	 * :ref:`machineImage-publish`
	 * :ref:`machineImage-regenerate`
	 * :ref:`scanImage-getPlatformTools`
	 * :ref:`status-object`
