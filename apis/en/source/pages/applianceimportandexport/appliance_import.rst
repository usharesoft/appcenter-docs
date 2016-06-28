.. Copyright 2016 FUJITSU LIMITED

.. _appliance-import:

appliance_import
----------------

.. function:: POST /users/{uid}/imports

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.4``

Requests to import an appliance archive.  This creates an ``appliance import ticket`` that contains the meta-data information on the ``appliance`` that will be created from the archive.  Once this ticket is created, the archive can be uploaded using :ref:`applianceImport-upload`. 

An archive can be used with the `hammr <http://hammr.io>`_ command-line tool.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "http://www.example.com/api/users/{uid}/imports" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`applianceimport-object`
	 * :ref:`applianceImport-get`
	 * :ref:`applianceImport-upload`
	 * :ref:`applianceImportStatus-get`
