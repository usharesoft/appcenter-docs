.. Copyright FUJITSU LIMITED 2016-2019

.. _userFormats-update:

userFormats_update
------------------

.. function:: PUT /users/{uid}/formats

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.2``

Updates the list of machine image formats that an user has access to. 

Please refer to :ref:`imageformat-object` for a complete list of all the ``image format`` attributes. 

.. warning:: Any image format that the user currently has access to that is not specified in the new target format list will be removed, this effectively de-activates those image formats for the user.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_formats_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`imageFormats-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/formats" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:imageFormats xmlns:ns0="http://www.usharesoft.com/uforge">
		<imageFormats>
			<imageFormat>
				<access>true</access>
				<active>true</active>
				<uri>format/5</uri>
			</imageFormat>
			<imageFormat>
				<access>true</access>
				<active>true</active>
				<uri>format/7</uri>
			</imageFormat>
		</imageFormats>
	</ns0:imageFormats>


.. seealso::

	 * :ref:`imageformat-object`
	 * :ref:`targetformat-api-resources`
	 * :ref:`targetformat-object`
	 * :ref:`targetplatform-api-resources`
	 * :ref:`targetplatform-object`
	 * :ref:`userFormats-getAll`
	 * :ref:`userTargetFormat-getAll`
	 * :ref:`userTargetFormat-update`
	 * :ref:`userTargetPlatformFormat-getAll`
	 * :ref:`userTargetPlatforms-getAll`
	 * :ref:`userTargetPlatforms-update`
