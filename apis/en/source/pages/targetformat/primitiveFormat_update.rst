.. Copyright 2016 FUJITSU LIMITED

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

	curl "http://www.example.com/api/orgs/{oid}/formats" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:imageFormats>
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

	 * :ref:`targetplatform-api-resources`
	 * :ref:`targetplatform-object`
	 * :ref:`targetformat-object`
	 * :ref:`imageformat-object`
	 * :ref:`primitiveFormat-getAll`
	 * :ref:`targetFormat-create`
	 * :ref:`targetFormat-getAll`
	 * :ref:`targetFormat-get`
	 * :ref:`targetFormat-delete`
	 * :ref:`targetFormat-update`
	 * :ref:`targetFormat-updateAccess`
	 * :ref:`targetFormatLogo-upload`
	 * :ref:`targetFormatLogo-delete`
	 * :ref:`targetFormatLogo-download`
	 * :ref:`targetFormatLogo-downloadFile`
	 * :ref:`targetFormat-getAllTargetPlatforms`
