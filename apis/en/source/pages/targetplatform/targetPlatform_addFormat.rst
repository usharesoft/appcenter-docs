.. Copyright FUJITSU LIMITED 2016-2019

.. _targetPlatform-addFormat:

targetPlatform_addFormat
------------------------

.. function:: POST /orgs/{oid}/targetplatforms/{tpid}/targetformats

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Add a target format to a target platform. 

Please refer to :ref:`targetformat-object` for a complete list of all the ``target format`` attributes.

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

A :ref:`targetFormat-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/targetplatforms/{tpid}/targetformats" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:targetFormat xmlns:ns0="http://www.usharesoft.com/uforge">
		<name>My VBox</name>
	</ns0:targetFormat>


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
