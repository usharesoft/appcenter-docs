.. Copyright FUJITSU LIMITED 2016-2019

.. _os-create:

os_create
---------

.. function:: POST /distributions/{oid}/{name}/{version}

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Registers a new operating system in an organization. 

.. note:: This POST request does not require any HTTP body.  All the information is passed via the URL request as a set of query parameters.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_os_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``name`` (required): the name of the operating system
* ``oid`` (required): the id of the :ref:`org-object`
* ``version`` (required): the version of the operating system

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/distributions/{oid}/{name}/{version}" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`distribution-object`
	 * :ref:`osAccess-update`
	 * :ref:`osLicense-download`
	 * :ref:`osLogo-download`
	 * :ref:`osLogo-downloadFile`
	 * :ref:`osPkgUpdates-getAll`
	 * :ref:`osPkg-get`
	 * :ref:`osPkg-getAll`
	 * :ref:`os-get`
	 * :ref:`os-getAll`
	 * :ref:`os-update`
