.. Copyright FUJITSU LIMITED 2016-2019

.. _orgMember-getAll:

orgMember_getAll
----------------

.. function:: GET /orgs/{oid}/members

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.3``

Retrieves all the users that are members of an organization. 

A list of :ref:`user-object` objects are returned.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_members_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/members" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`distribprofile-object`
	 * :ref:`license-object`
	 * :ref:`org-object`
	 * :ref:`orgCompany-getAll`
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
