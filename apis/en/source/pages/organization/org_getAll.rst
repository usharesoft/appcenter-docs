.. Copyright 2016 FUJITSU LIMITED

.. _org-getAll:

org_getAll
----------

.. function:: GET /orgs

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Retrieves all the organizations on the platform. 

A list of :ref:`org-object` objects are returned.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_administrate``

URI Parameters
~~~~~~~~~~~~~~

None
HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`org-object`
	 * :ref:`distribprofile-object`
	 * :ref:`user-object`
	 * :ref:`license-object`
	 * :ref:`org-create`
	 * :ref:`org-get`
	 * :ref:`orgOS-add`
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
	 * :ref:`orgLicense-getAll`
	 * :ref:`orgLicense-download`
