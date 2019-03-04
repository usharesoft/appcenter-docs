.. Copyright FUJITSU LIMITED 2016-2019

.. _targetFormat-create:

targetFormat_create
-------------------

.. function:: POST /orgs/{oid}/targetformats

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Creates a new target format in an organization.  This is a format used to generate machine images.  A target format is extends a ``primitive format`` type supported by the platform e.g. ``AMI``, ``VHD``, ``Hyper-V`` etc. 

Please refer to :ref:`targetformat-object` for a complete list of all the ``target format`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_formats_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`targetFormat-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/targetformats" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:targetFormat xmlns:ns0="http://www.usharesoft.com/uforge">
		<name>My VBox</name>
		<format>
			<name>vbox</name>
		</format>
		<category>
			<name>Virtual</name>
		</category>
		<type>virtual</type>
		<imageInfos>When you will have generated your image, please add it to VirtualBox by doing: Machine > Add. Then select the .xml file.</imageInfos>
	</ns0:targetFormat>


.. seealso::

	 * :ref:`imageformat-object`
	 * :ref:`primitiveFormat-getAll`
	 * :ref:`primitiveFormat-update`
	 * :ref:`targetFormatLogo-delete`
	 * :ref:`targetFormatLogo-download`
	 * :ref:`targetFormatLogo-downloadFile`
	 * :ref:`targetFormatLogo-upload`
	 * :ref:`targetFormat-delete`
	 * :ref:`targetFormat-get`
	 * :ref:`targetFormat-getAll`
	 * :ref:`targetFormat-getAllTargetPlatforms`
	 * :ref:`targetFormat-update`
	 * :ref:`targetFormat-updateAccess`
	 * :ref:`targetformat-object`
	 * :ref:`targetplatform-api-resources`
	 * :ref:`targetplatform-object`
