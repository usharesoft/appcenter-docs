.. Copyright FUJITSU LIMITED 2016-2019

.. _targetFormat-update:

targetFormat_update
-------------------

.. function:: PUT /orgs/{oid}/targetformats/{tfid}

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Updates the information of a target format. 

Please refer to :ref:`targetformat-object` for a complete list of all the ``target format`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_formats_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): the id of the :ref:`org-object`
* ``tfid`` (required): the id of the :ref:`targetformat-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`targetFormat-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/targetformats/{tfid}" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<targetFormat xmlns:ns0="http://www.usharesoft.com/uforge">
		<name>{name-targetFormat}</name>
		<format>
			<name>{name-format}</name>
		</format>
		<category>
			<name>{name-targetFormatCategory}</name>
		</category>
		<type>cloud</type>
		<credAccountType>openstack</credAccountType>
	</targetFormat>


.. seealso::

	 * :ref:`imageformat-object`
	 * :ref:`primitiveFormat-getAll`
	 * :ref:`primitiveFormat-update`
	 * :ref:`targetFormatLogo-delete`
	 * :ref:`targetFormatLogo-download`
	 * :ref:`targetFormatLogo-downloadFile`
	 * :ref:`targetFormatLogo-upload`
	 * :ref:`targetFormat-create`
	 * :ref:`targetFormat-delete`
	 * :ref:`targetFormat-get`
	 * :ref:`targetFormat-getAll`
	 * :ref:`targetFormat-getAllTargetPlatforms`
	 * :ref:`targetFormat-updateAccess`
	 * :ref:`targetformat-object`
	 * :ref:`targetplatform-api-resources`
	 * :ref:`targetplatform-object`
