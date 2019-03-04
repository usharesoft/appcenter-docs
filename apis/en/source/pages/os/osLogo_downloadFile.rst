.. Copyright FUJITSU LIMITED 2016-2019

.. _osLogo-downloadFile:

osLogo_downloadFile
-------------------

.. function:: GET /distributions/{id}/logo/{fileName}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``*/*``
	* Since: ``UForge 1.0``

Downloads the logo of an operating system. 

This request is the same as :ref:`osLogo-download`.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``fileName`` (required): the file name of the logo
* ``id`` (required): the id of the :ref:`distribution-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/distributions/{id}/logo/{fileName}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`distribution-object`
	 * :ref:`osAccess-update`
	 * :ref:`osLicense-download`
	 * :ref:`osLogo-download`
	 * :ref:`osPkgUpdates-getAll`
	 * :ref:`osPkg-get`
	 * :ref:`osPkg-getAll`
	 * :ref:`os-create`
	 * :ref:`os-get`
	 * :ref:`os-getAll`
	 * :ref:`os-update`
