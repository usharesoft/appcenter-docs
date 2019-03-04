.. Copyright FUJITSU LIMITED 2016-2019

.. _targetFormat-updateAccess:

targetFormat_updateAccess
-------------------------

.. function:: PUT /orgs/{oid}/targetformats

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Updates one or more target formats in an organization.  This can be either to enable or disable a target format; add or remove a target format or update the default target format list. If a target format has been flagged ``inactive`` globally then this target format will no longer be available in the organization. 

.. note:: When a target format is flagged as ``default`` then any new user created or added to the organization will be automatically given access to this target format. 

.. warning:: If you add a target format as ``default``, all existing users will NOT automatically be given access to this target format.  You will need to do this explicitly.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_formats_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`targetFormats-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/targetformats" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:targetFormats xmlns:ns0="http://www.usharesoft.com/uforge">
		<targetFormats>
			<targetFormat>
				<access>true</access>
				<active>true</active>
				<uri>orgs/1/targetFormats/4</uri>
			</targetFormat>
			<targetFormat>
				<access>false</access>
				<active>false</active>
				<uri>orgs/1/targetFormats/5</uri>
			</targetFormat>
		</targetFormats>
	</ns0:targetFormats>


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
	 * :ref:`targetFormat-update`
	 * :ref:`targetformat-object`
	 * :ref:`targetplatform-api-resources`
	 * :ref:`targetplatform-object`
