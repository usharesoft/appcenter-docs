.. Copyright FUJITSU LIMITED 2016-2019

.. _primitiveFormat-update:

primitiveFormat_update
----------------------

.. function:: PUT /orgs/{oid}/formats

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Updates the access rights for a primitive format in an organization. If a primitive format has been flagged ``inactive`` globally then this primitive format will no longer be available in the organization. 

.. note:: When a primitive format is flagged as ``default`` then any new user created or added to the organization will be automatically given access to this primitive format. 

.. warning:: If you add a primitive format as ``default``, all existing users will NOT automatically be given access to this primitive format.  You will need to do this explicitly.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_formats_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`imageFormats-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/formats" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:imageFormats xmlns:ns0="http://www.usharesoft.com/uforge">
		<imageFormats>
			<imageFormat>
				<access>true</access>
				<active>true</active>
				<preselected>true</preselected>
				<uri>format/5</uri>
			</imageFormat>
			<imageFormat>
				<access>true</access>
				<active>true</active>
				<preselected>true</preselected>
				<uri>format/7</uri>
			</imageFormat>
		</imageFormats>
	</ns0:imageFormats>


.. seealso::

	 * :ref:`imageformat-object`
	 * :ref:`primitiveFormat-getAll`
	 * :ref:`targetFormatLogo-delete`
	 * :ref:`targetFormatLogo-download`
	 * :ref:`targetFormatLogo-downloadFile`
	 * :ref:`targetFormatLogo-upload`
	 * :ref:`targetFormat-create`
	 * :ref:`targetFormat-delete`
	 * :ref:`targetFormat-get`
	 * :ref:`targetFormat-getAll`
	 * :ref:`targetFormat-getAllTargetPlatforms`
	 * :ref:`targetFormat-update`
	 * :ref:`targetFormat-updateAccess`
	 * :ref:`targetformat-object`
	 * :ref:`targetplatform-api-resources`
	 * :ref:`targetplatform-object`
