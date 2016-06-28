.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _uforgeStudioPkgLicense-delete:

uforgeStudioPkgLicense_delete
-----------------------------

.. function:: DELETE /users/{uid}/appliances/{aid}/oas/{oaspkgid}/licenses/{oaslid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Deletes the license file attached to an UForge Studio package.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``studio_access``

URI Parameters
~~~~~~~~~~~~~~

* ``oaslid`` (required): the id of the :ref:`license-object`
* ``uid`` (required): the id of the :ref:`user-object`
* ``aid`` (required): the id of the :ref:`appliance-object`
* ``oaspkgid`` (required): the id of the :ref:`oaspkg-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "http://www.example.com/api/users/{uid}/appliances/{aid}/oas/{oaspkgid}/licenses/{oaslid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`oaspkg-object`
	 * :ref:`appliance-object`
	 * :ref:`license-object`
	 * :ref:`uforgeStudioPkg-create`
	 * :ref:`uforgeStudioPkg-delete`
	 * :ref:`uforgeStudioPkg-get`
	 * :ref:`uforgeStudioPkg-update`
	 * :ref:`uforgeStudioPkg-upload`
	 * :ref:`uforgeStudioPkg-download`
	 * :ref:`uforgeStudioPkgLicense-download`
	 * :ref:`uforgeStudioPkgLicense-upload`
	 * :ref:`uforgeStudioPkgLicense-uploadFile`
