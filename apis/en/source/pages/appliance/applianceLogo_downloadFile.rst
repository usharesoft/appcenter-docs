.. Copyright FUJITSU LIMITED 2016-2019

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

* Requires Authentication: ``true``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``fileName`` (required): the file name of the logo to upload
* ``aid`` (required): the id of the :ref:`appliance-object`
* ``logoId`` (required): the id of the :ref:`logo-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/logo/{logoId}/{fileName}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`applianceLogo-delete`
	 * :ref:`applianceLogo-download`
	 * :ref:`applianceLogo-upload`
	 * :ref:`appliance-clone`
	 * :ref:`appliance-create`
	 * :ref:`appliance-delete`
	 * :ref:`appliance-get`
	 * :ref:`appliance-getAll`
	 * :ref:`appliance-update`
	 * :ref:`logo-object`
