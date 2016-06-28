.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _applianceLogo-downloadFile:

applianceLogo_downloadFile
--------------------------

.. function:: GET /users/{uid}/appliances/{aid}/logo/{logoId}/{fileName}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``*/*``
	* Since: ``UForge 3.0``

Downloads the logo binary for the appliance. 

This is the same request as :ref:`applianceLogo-download`

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``false``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object`
* ``fileName`` (required): the file name of the logo to upload
* ``aid`` (required): the id of the :ref:`appliance-object`
* ``logoId`` (required): the id of the :ref:`logo-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "/users/{uid}/appliances/{aid}/logo/{logoId}/{fileName}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`logo-object`
	 * :ref:`appliance-create`
	 * :ref:`appliance-clone`
	 * :ref:`appliance-delete`
	 * :ref:`appliance-get`
	 * :ref:`appliance-getAll`
	 * :ref:`appliance-update`
	 * :ref:`applianceLogo-delete`
	 * :ref:`applianceLogo-download`
	 * :ref:`applianceLogo-upload`
