.. Copyright FUJITSU LIMITED 2016-2019

.. _targetPlatform-getAll:

targetPlatform_getAll
---------------------

.. function:: GET /orgs/{oid}/targetplatforms

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Retrieves all the target platforms for an organization. 

A list of :ref:`targetplatform-object` objects are returned. You can use a ``search criteria`` to retrieve a subset of these target platforms.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_formats_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/targetplatforms" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`targetPlatformLogo-delete`
	 * :ref:`targetPlatformLogo-download`
	 * :ref:`targetPlatformLogo-downloadFile`
	 * :ref:`targetPlatformLogo-upload`
	 * :ref:`targetPlatform-addFormat`
	 * :ref:`targetPlatform-create`
	 * :ref:`targetPlatform-delete`
	 * :ref:`targetPlatform-get`
	 * :ref:`targetPlatform-getAll`
	 * :ref:`targetPlatform-getAllFormats`
	 * :ref:`targetPlatform-removeFormat`
	 * :ref:`targetPlatform-update`
	 * :ref:`targetPlatform-updateAccess`
	 * :ref:`targetformat-api-resources`
	 * :ref:`targetformat-object`
	 * :ref:`targetplatform-object`
