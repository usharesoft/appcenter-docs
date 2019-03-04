.. Copyright FUJITSU LIMITED 2016-2019

.. _orgOSWindows-getAll:

orgOSWindows_getAll
-------------------

.. function:: GET /orgs/{oid}/distributions/{did}/goldens

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.5.1``

Retrieves all the machine images (golden images) that have been registered for a Microsoft Windows operating system.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): the id of the :ref:`org-object`
* ``did`` (required): the id of the :ref:`distribution-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/distributions/{did}/goldens" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`distribution-object`
	 * :ref:`license-object`
	 * :ref:`org-object`
	 * :ref:`orgCompany-getAll`
	 * :ref:`orgMember-getAll`
	 * :ref:`orgMember-remove`
	 * :ref:`orgMember-update`
	 * :ref:`orgOSWindows-add`
	 * :ref:`orgOSWindows-delete`
	 * :ref:`orgOS-add`
	 * :ref:`orgOS-getAll`
	 * :ref:`orgOS-update`
	 * :ref:`org-create`
	 * :ref:`org-get`
	 * :ref:`org-getAll`
	 * :ref:`user-object`
	 * :ref:`windowsprofile-object`
