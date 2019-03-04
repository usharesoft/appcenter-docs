.. Copyright FUJITSU LIMITED 2016-2019

.. _userTargetFormat-update:

userTargetFormat_update
-----------------------

.. function:: PUT /users/{uid}/targetformats

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Updates the list of target formats that an user has has access to. 

Please refer to :ref:`targetformat-object` for a complete list of all the ``target format`` attributes. 

.. warning:: Any target format that the user currently has access to that is not specified in the new target format list will be removed, this effectively de-activates those target formats for the user.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_formats_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`targetFormats-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/targetformats" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:targetFormats xmlns:ns0="http://www.usharesoft.com/uforge">
		<targetFormats>
			<targetFormat>
				<uri>orgs/1/targetformats/1</uri>
			</targetFormat>
		</targetFormats>
	</ns0:targetFormats>


.. seealso::

	 * :ref:`imageformat-object`
	 * :ref:`targetformat-api-resources`
	 * :ref:`targetformat-object`
	 * :ref:`targetplatform-api-resources`
	 * :ref:`targetplatform-object`
	 * :ref:`userFormats-getAll`
	 * :ref:`userFormats-update`
	 * :ref:`userTargetFormat-getAll`
	 * :ref:`userTargetPlatformFormat-getAll`
	 * :ref:`userTargetPlatforms-getAll`
	 * :ref:`userTargetPlatforms-update`
