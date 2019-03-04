.. Copyright FUJITSU LIMITED 2016-2019

.. _targetPlatform-update:

targetPlatform_update
---------------------

.. function:: PUT /orgs/{oid}/targetplatforms/{tpid}

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Update the meta-data of a target platform. 

Please refer to :ref:`targetplatform-object` for a complete list of all the ``target platform`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_formats_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``tpid`` (required): the id of the :ref:`targetplatform-object`
* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`targetPlatform-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/targetplatforms/{tpid}" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<targetPlatform xmlns:ns0="http://www.usharesoft.com/uforge">
		<name>{name-targetPlatform}</name>
		<type>openstack</type>
	</targetPlatform>


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
