.. Copyright FUJITSU LIMITED 2016-2019

.. _machineImageFile-download:

machineImageFile_download
-------------------------

.. function:: GET /users/{uid}/appliances/{aid}/images/{itid}/files/{filepath : .+}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``*/*``
	* Since: ``UForge 3.7.7``

Downloads a file of a generated PXE image.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``filepath`` (required): the path to the file to download
* ``itid`` (required): the id of the :ref:`image-object`
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/images/{itid}/files/{filepath : .+}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`image-object`
	 * :ref:`machineImage-delete`
	 * :ref:`machineImage-deleteAll`
	 * :ref:`machineImage-download`
	 * :ref:`machineImage-downloadFile`
	 * :ref:`machineImage-generate`
	 * :ref:`machineImage-get`
	 * :ref:`machineImage-getAll`
	 * :ref:`machineImage-publish`
	 * :ref:`machineImage-regenerate`
