.. Copyright 2016 FUJITSU LIMITED

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
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

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

	 * :ref:`targetplatform-api-resources`
	 * :ref:`targetplatform-object`
	 * :ref:`targetformat-object`
	 * :ref:`imageformat-object`
	 * :ref:`primitiveFormat-getAll`
	 * :ref:`primitiveFormat-update`
	 * :ref:`targetFormat-create`
	 * :ref:`targetFormat-getAll`
	 * :ref:`targetFormat-get`
	 * :ref:`targetFormat-delete`
	 * :ref:`targetFormat-updateAccess`
	 * :ref:`targetFormatLogo-upload`
	 * :ref:`targetFormatLogo-delete`
	 * :ref:`targetFormatLogo-download`
	 * :ref:`targetFormatLogo-downloadFile`
	 * :ref:`targetFormat-getAllTargetPlatforms`
