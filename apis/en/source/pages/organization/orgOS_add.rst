.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _orgOS-add:

orgOS_add
---------

.. function:: POST /orgs/{oid}/distributions

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.2``

Registers a new operating system to an organization. 

Please refer to :ref:`distribprofile-object` for a complete list of all the ``os`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_os_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`distribution-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "http://www.example.com/api/orgs/{oid}/distributions" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:distribution>
		<name>CentOS</name>
		<version>6</version>
		<arch>x86_64</arch>
	</ns0:distribution>


.. seealso::

	 * :ref:`org-object`
	 * :ref:`distribprofile-object`
	 * :ref:`user-object`
	 * :ref:`license-object`
	 * :ref:`org-create`
	 * :ref:`org-get`
	 * :ref:`org-getAll`
	 * :ref:`orgOS-getAll`
	 * :ref:`orgOS-update`
	 * :ref:`orgOSWindows-add`
	 * :ref:`orgOSWindows-getAll`
	 * :ref:`orgMember-remove`
	 * :ref:`orgMember-update`
	 * :ref:`orgMember-getAll`
	 * :ref:`orgMember-remove`
	 * :ref:`orgMember-update`
	 * :ref:`orgMember-getAll`
	 * :ref:`orgCompany-getAll`
