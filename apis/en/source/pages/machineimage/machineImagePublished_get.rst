.. Copyright 2017 FUJITSU LIMITED

.. _machineImagePublished-get:

machineImagePublished_get
-------------------------

.. function:: GET /users/{uid}/appliances/{aid}/images/{itid}/pimages/{pitid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 2.0``

Retrieve a published machine image for an appliance.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the User
* ``itid`` (required): the id of the :ref:`image-object`
* ``aid`` (required): the id of the Appliance
* ``pitid`` (required): the id of the :ref:`publishimage-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/images/{itid}/pimages/{pitid}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`applianceImage-publish`
	 * :ref:`machineImageGeneration-cancel`
	 * :ref:`machineImagePublish-cancel`
	 * :ref:`machineImagePublishedStatus-get`
	 * :ref:`machineImagePublishedStatus-getAll`
	 * :ref:`machineImagePublished-delete`
	 * :ref:`machineImagePublished-deleteAll`
	 * :ref:`machineImagePublished-deploy`
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
	 * :ref:`machineImage-publish`
	 * :ref:`machineImage-regenerate`
	 * :ref:`publishimage-object`
