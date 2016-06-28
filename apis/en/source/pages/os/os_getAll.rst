.. Copyright 2016 FUJITSU LIMITED

.. _os-getAll:

os_getAll
---------

.. function:: GET /distributions

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.5``

Retrieves all the operating system registered on the platform. 

A list of :ref:`distribprofile-object` objects are returned. 

You can use a ``search criteria`` to retrieve a subset of these operating systems.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

None
HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "http://www.example.com/api/distributions" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`distribprofile-object`
	 * :ref:`os-create`
	 * :ref:`os-get`
	 * :ref:`os-update`
	 * :ref:`osAccess-update`
	 * :ref:`osLicense-download`
	 * :ref:`osLogo-download`
	 * :ref:`osLogo-downloadFile`
	 * :ref:`osPkg-getAll`
	 * :ref:`osPkg-get`
	 * :ref:`osPkgUpdates-getAll`
