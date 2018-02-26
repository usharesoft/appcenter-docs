.. Copyright 2017 FUJITSU LIMITED

.. _osLicense-download:

osLicense_download
------------------

.. function:: GET /distributions/{id}/license

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``*/*``
	* Since: ``UForge 1.0``

Downloads the license file for an operating system.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``id`` (required): the id of the :ref:`distribution-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/distributions/{id}/license" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`distribution-object`
	 * :ref:`osAccess-update`
	 * :ref:`osLogo-download`
	 * :ref:`osLogo-downloadFile`
	 * :ref:`osPkgUpdates-getAll`
	 * :ref:`osPkg-get`
	 * :ref:`osPkg-getAll`
	 * :ref:`os-create`
	 * :ref:`os-get`
	 * :ref:`os-getAll`
	 * :ref:`os-update`
