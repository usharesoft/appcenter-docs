.. Copyright FUJITSU LIMITED 2016-2019

.. _osPkg-get:

osPkg_get
---------

.. function:: GET /distributions/{id}/pkgs/{pid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.5``

Retrieves the meta-data of a package from an operating system.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``pid`` (required): the id of the :ref:`package-object`
* ``id`` (required): the id of the :ref:`distribprofile-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/distributions/{id}/pkgs/{pid}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`distribprofile-object`
	 * :ref:`osAccess-update`
	 * :ref:`osLicense-download`
	 * :ref:`osLogo-download`
	 * :ref:`osLogo-downloadFile`
	 * :ref:`osPkgUpdates-getAll`
	 * :ref:`osPkg-get`
	 * :ref:`osPkg-getAll`
	 * :ref:`os-create`
	 * :ref:`os-getAll`
	 * :ref:`os-update`
	 * :ref:`package-object`
