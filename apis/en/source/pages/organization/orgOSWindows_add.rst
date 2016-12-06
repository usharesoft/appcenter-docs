.. Copyright 2016 FUJITSU LIMITED

.. _orgOSWindows-add:

orgOSWindows_add
----------------

.. function:: POST /orgs/{oid}/distributions/{did}/goldens

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.5.1``

Adds a new Microsoft Windows base machine image (golden image) to a Microsoft Windows operating system.  This operating system is registered to an organization.  This uploads the golden image to the platform

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (optional): 
* ``did`` (optional): 

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/distributions/{did}/goldens" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`distribprofile-object`
	 * :ref:`license-object`
	 * :ref:`org-object`
	 * :ref:`orgCompany-getAll`
	 * :ref:`orgMember-getAll`
	 * :ref:`orgMember-remove`
	 * :ref:`orgMember-update`
	 * :ref:`orgOSWindows-getAll`
	 * :ref:`orgOS-add`
	 * :ref:`orgOS-getAll`
	 * :ref:`orgOS-update`
	 * :ref:`user-object`
