.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _uforgeStudioPkg-get:

uforgeStudioPkg_get
-------------------

.. function:: GET /users/{uid}/appliances/{aid}/oas/{oaspkgid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Retrieves the UForge Studio package meta-data (:ref:`oaspkg-object`) that has been added to a :ref:`appliance-object`.

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

	curl "/users/{uid}/appliances/{aid}/oas/{oaspkgid}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`oaspkg-object`
	 * :ref:`appliance-object`
	 * :ref:`uforgeStudioPkg-create`
	 * :ref:`uforgeStudioPkg-delete`
	 * :ref:`uforgeStudioPkg-update`
	 * :ref:`uforgeStudioPkg-upload`
	 * :ref:`uforgeStudioPkg-download`
	 * :ref:`uforgeStudioPkgLicense-download`
	 * :ref:`uforgeStudioPkgLicense-delete`
	 * :ref:`uforgeStudioPkgLicense-upload`
	 * :ref:`uforgeStudioPkgLicense-uploadFile`
