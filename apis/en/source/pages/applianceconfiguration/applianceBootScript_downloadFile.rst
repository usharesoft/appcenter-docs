.. Copyright FUJITSU LIMITED 2016-2019

.. _applianceBootScript-downloadFile:

applianceBootScript_downloadFile
--------------------------------

.. function:: GET /users/{uid}/appliances/{aid}/bootscripts/{bsid}/bin/{fileName}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``*/*``
	* Since: ``UForge 2.1.06``

Downloads a boot script file. 

This request is the same as :ref:`applianceBootScript-download` 

The boot script can be downloaded without authentication if an ``downloadId`` is added as a ``query parameter``.  To retrieve the downloadId, use :ref:`applianceBootScript-get`. 

.. note:: The ``downloadId`` can only be used once, afterwards it expires, and a new ``downloadId`` must be retrieved.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``false``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``bsid`` (required): the id of the :ref:`bootscript-object`
* ``fileName`` (required): the boot script filename to add
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/bootscripts/{bsid}/bin/{fileName}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`applianceBootScript-create`
	 * :ref:`applianceBootScript-delete`
	 * :ref:`applianceBootScript-deleteAll`
	 * :ref:`applianceBootScript-download`
	 * :ref:`applianceBootScript-get`
	 * :ref:`applianceBootScript-getAll`
	 * :ref:`applianceBootScript-update`
	 * :ref:`applianceBootScript-upload`
	 * :ref:`bootscript-object`
