.. Copyright 2016 FUJITSU LIMITED

.. _targetPlatform-create:

targetPlatform_create
---------------------

.. function:: POST /orgs/{oid}/targetplatforms

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Creates a new target platform in an organization. 

Please refer to :ref:`targetplatform-object` for a complete list of all the ``target platform`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_formats_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`targetPlatform-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "http://www.example.com/api/orgs/{oid}/targetplatforms" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:targetPlatform>
		<name>My OpenStack</name>
		<type>openstack</type>
		<accountInfos>Please find your My OpenStack credentials at the following URL http://provider/myAccount/OpenStackSettings</accountInfos>
	</ns0:targetPlatform>


.. seealso::

	 * :ref:`targetformat-api-resources`
	 * :ref:`targetplatform-object`
	 * :ref:`targetformat-object`
	 * :ref:`targetPlatform-create`
	 * :ref:`targetPlatform-getAll`
	 * :ref:`targetPlatform-get`
	 * :ref:`targetPlatform-update`
	 * :ref:`targetPlatform-updateAccess`
	 * :ref:`targetPlatform-delete`
	 * :ref:`targetPlatform-getAllFormats`
	 * :ref:`targetPlatform-addFormat`
	 * :ref:`targetPlatform-removeFormat`
	 * :ref:`targetPlatformLogo-upload`
	 * :ref:`targetPlatformLogo-delete`
	 * :ref:`targetPlatformLogo-download`
	 * :ref:`targetPlatformLogo-downloadFile`
