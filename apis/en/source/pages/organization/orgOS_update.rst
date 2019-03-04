.. Copyright FUJITSU LIMITED 2016-2019

.. _orgOS-update:

orgOS_update
------------

.. function:: PUT /orgs/{oid}/distributions

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.3``

Updates the operating systems available for an Organization. This can be to: 

 

- enable or disable one or more operating systems available in the organization 

- add or remove one or more operating systems as 'default' operating systems. 

When an OS is flagged as 'default' then any new user created/added to the organization will be automatically given access to this operating systems. 

..warning:: If you add an operating system as ``default``, all existing users will NOT automatically be given access to this operating system, you will need to do this explicitly for each user. 

If an operating system has been flagged ``inactive`` globally then this operating system will no longer be available for the organization.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_os_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`distributions-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/distributions" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:distributions xmlns:ns0="http://www.usharesoft.com/uforge">
		<distributions>
			<distribution>
				<active>true</active>
				<uri>distributions/1</uri>
				<preselected>false</preselected>
				<visible>true</visible>
			</distribution>
		</distributions>
	</ns0:distributions>


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
	 * :ref:`orgOSWindows-getAll`
	 * :ref:`orgOS-add`
	 * :ref:`orgOS-getAll`
	 * :ref:`org-create`
	 * :ref:`org-get`
	 * :ref:`org-getAll`
	 * :ref:`user-object`
