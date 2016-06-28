.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _uforgeStudioPkg-delete:

uforgeStudioPkg_delete
----------------------

.. function:: DELETE /users/{uid}/appliances/{aid}/oas/{oaspkgid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 1.0``

Deletes the UForge Studio package meta-data and any associated package binary from the appliance.

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

	curl "/users/{uid}/appliances/{aid}/oas/{oaspkgid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`oaspkg-object`
	 * :ref:`appliance-object`
	 * :ref:`uforgeStudioPkg-create`
	 * :ref:`uforgeStudioPkg-get`
	 * :ref:`uforgeStudioPkg-update`
	 * :ref:`uforgeStudioPkg-upload`
	 * :ref:`uforgeStudioPkg-download`
	 * :ref:`uforgeStudioPkgLicense-download`
	 * :ref:`uforgeStudioPkgLicense-delete`
	 * :ref:`uforgeStudioPkgLicense-upload`
	 * :ref:`uforgeStudioPkgLicense-uploadFile`
