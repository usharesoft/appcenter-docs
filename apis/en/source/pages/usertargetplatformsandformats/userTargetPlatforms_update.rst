.. Copyright FUJITSU LIMITED 2016-2019

.. _userTargetPlatforms-update:

userTargetPlatforms_update
--------------------------

.. function:: PUT /users/{uid}/targetplatforms

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Updates the list of target platforms that an user has access to. 

Please refer to :ref:`targetplatform-object` for a complete list of all the ``target platform`` attributes. 

.. warning:: Any target platform that the user currently has access to that is not specified in the new target platform list will be removed, this effectively de-activates those target platforms for the user.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_formats_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`targetPlatforms-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/targetplatforms" -X PUT \
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

	 * :ref:`imageformat-object`
	 * :ref:`targetformat-api-resources`
	 * :ref:`targetformat-object`
	 * :ref:`targetplatform-api-resources`
	 * :ref:`targetplatform-object`
	 * :ref:`userFormats-getAll`
	 * :ref:`userFormats-update`
	 * :ref:`userTargetFormat-getAll`
	 * :ref:`userTargetFormat-update`
	 * :ref:`userTargetPlatformFormat-getAll`
	 * :ref:`userTargetPlatforms-getAll`
