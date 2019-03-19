.. Copyright FUJITSU LIMITED 2016-2019

.. _targetPlatform-updateAccess:

targetPlatform_updateAccess
---------------------------

.. function:: PUT /orgs/{oid}/targetplatforms

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Updates one or more target platforms in an organization.  This can be either to enable or disable a target platform; add or remove a target platform or update the default target platform list. If a target platform has been flagged ``inactive`` globally then this target platform will no longer be available in the organization. 

.. note:: When a target platform is flagged as ``default`` then any new user created or added to the organization will be automatically given access to this target platform. 

.. warning:: If you add a platform format as ``default``, all existing users will NOT automatically be given access to this target platform.  You will need to do this explicitly.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_formats_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`targetPlatforms-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/targetplatforms" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:targetPlatforms xmlns:ns0="http://www.usharesoft.com/uforge">
		<targetPlatforms>
			<targetPlatform>
				<access>true</access>
				<active>true</active>
				<uri>orgs/1/targetPlatforms/4</uri>
			</targetPlatform>
			<targetPlatform>
				<access>false</access>
				<active>false</active>
				<uri>orgs/1/targetPlatforms/5</uri>
			</targetPlatform>
		</targetPlatforms>
	</ns0:targetPlatforms>


.. seealso::

	 * :ref:`targetPlatformLogo-delete`
	 * :ref:`targetPlatformLogo-download`
	 * :ref:`targetPlatformLogo-downloadFile`
	 * :ref:`targetPlatformLogo-upload`
	 * :ref:`targetPlatform-addFormat`
	 * :ref:`targetPlatform-create`
	 * :ref:`targetPlatform-delete`
	 * :ref:`targetPlatform-get`
	 * :ref:`targetPlatform-getAll`
	 * :ref:`targetPlatform-getAllFormats`
	 * :ref:`targetPlatform-removeFormat`
	 * :ref:`targetPlatform-update`
	 * :ref:`targetPlatform-updateAccess`
	 * :ref:`targetformat-api-resources`
	 * :ref:`targetformat-object`
	 * :ref:`targetplatform-object`
