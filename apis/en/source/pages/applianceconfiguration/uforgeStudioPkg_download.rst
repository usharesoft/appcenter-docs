.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _uforgeStudioPkg-download:

uforgeStudioPkg_download
------------------------

.. function:: GET /users/{uid}/appliances/{aid}/oas/{oaspkgid}/bin

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``*/*``
	* Since: ``UForge 3.0``

Downloads the package binary attached to an UForge Studio package object.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``studio_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object`
* ``aid`` (required): the id of the :ref:`appliance-object`
* ``oaspkgid`` (required): the id of the :ref:`oaspkg-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "http://www.example.com/api/users/{uid}/appliances/{aid}/oas/{oaspkgid}/bin" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`oaspkg-object`
	 * :ref:`appliance-object`
	 * :ref:`uforgeStudioPkg-create`
	 * :ref:`uforgeStudioPkg-delete`
	 * :ref:`uforgeStudioPkg-get`
	 * :ref:`uforgeStudioPkg-update`
	 * :ref:`uforgeStudioPkg-upload`
	 * :ref:`uforgeStudioPkgLicense-download`
	 * :ref:`uforgeStudioPkgLicense-delete`
	 * :ref:`uforgeStudioPkgLicense-upload`
	 * :ref:`uforgeStudioPkgLicense-uploadFile`
