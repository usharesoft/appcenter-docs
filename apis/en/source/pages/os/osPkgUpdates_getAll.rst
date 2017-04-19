.. Copyright 2017 FUJITSU LIMITED

.. _osPkgUpdates-getAll:

osPkgUpdates_getAll
-------------------

.. function:: GET /distributions/{id}/pkgs/{pid}/updateinfo

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.5``

Retrieves all the updates related to package in an operating system

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

	curl "https://uforge.example.com/api/distributions/{id}/pkgs/{pid}/updateinfo" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`distribprofile-object`
	 * :ref:`package-object`
	 * :ref:`os-create`
	 * :ref:`os-getAll`
	 * :ref:`os-get`
	 * :ref:`os-update`
	 * :ref:`osAccess-update`
	 * :ref:`osLicense-download`
	 * :ref:`osLogo-download`
	 * :ref:`osLogo-downloadFile`
	 * :ref:`osPkg-get`
	 * :ref:`osPkgUpdates-getAll`
