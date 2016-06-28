.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _orgOS-getAll:

orgOS_getAll
------------

.. function:: GET /orgs/{oid}/distributions

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.2``

Retrieves all the operating systems for an organization. 

A list of :ref:`distribprofile-object` objects are returned. You can use a set of query parameters to retrieve a subset of these operating systems: 

 

- ``name``: filter by operating system name, for example ``CentOS`` 

- ``version``: filter by operating system version, for example ``7.0`` 

- ``arch``: filter by operating system architecture, for example ``x86``

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "http://www.example.com/api/orgs/{oid}/distributions" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`org-object`
	 * :ref:`distribprofile-object`
	 * :ref:`user-object`
	 * :ref:`license-object`
	 * :ref:`org-create`
	 * :ref:`org-get`
	 * :ref:`org-getAll`
	 * :ref:`orgOS-add`
	 * :ref:`orgOS-update`
	 * :ref:`orgOSWindows-add`
	 * :ref:`orgOSWindows-getAll`
	 * :ref:`orgMember-remove`
	 * :ref:`orgMember-update`
	 * :ref:`orgMember-getAll`
	 * :ref:`orgCompany-getAll`
