.. Copyright FUJITSU LIMITED 2016-2019

.. _targetPlatform-get:

targetPlatform_get
------------------

.. function:: GET /orgs/{oid}/targetplatforms/{tpid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Retrieves the information of a target platform.  A target platform describes an environment where the platform can publish/register a generated machine image to.  It can contain one or more ``target formats``.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``tpid`` (required): the id of the :ref:`targetplatform-object`
* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/targetplatforms/{tpid}" -X GET \
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
