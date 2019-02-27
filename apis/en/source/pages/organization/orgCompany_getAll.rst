.. Copyright FUJITSU LIMITED 2016-2019

.. _orgCompany-getAll:

orgCompany_getAll
-----------------

.. function:: GET /orgs/{oid}/companies

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Retrieves all the company information for an organization.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/companies" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`company-object`
	 * :ref:`distribprofile-object`
	 * :ref:`license-object`
	 * :ref:`org-object`
	 * :ref:`orgMember-getAll`
	 * :ref:`orgMember-getAll`
	 * :ref:`orgMember-remove`
	 * :ref:`orgMember-remove`
	 * :ref:`orgMember-update`
	 * :ref:`orgMember-update`
	 * :ref:`orgOSWindows-add`
	 * :ref:`orgOSWindows-getAll`
	 * :ref:`orgOS-add`
	 * :ref:`orgOS-getAll`
	 * :ref:`orgOS-update`
	 * :ref:`org-create`
	 * :ref:`org-get`
	 * :ref:`org-getAll`
	 * :ref:`user-object`
