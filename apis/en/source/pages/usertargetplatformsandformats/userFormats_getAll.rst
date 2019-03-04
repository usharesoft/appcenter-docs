.. Copyright FUJITSU LIMITED 2016-2019

.. _userFormats-getAll:

userFormats_getAll
------------------

.. function:: GET /users/{uid}/formats

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.2``

Retrieves all the target formats available for an user. 

A list of :ref:`targetformat-object` objects are returned. 

You can use a ``search criteria`` to retrieve a subset of these target formats. 

.. warning:: The target formats available for a user not only depends on the access rights given for the user but also the access rights of the target format in the organization.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/formats" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`imageformat-object`
	 * :ref:`targetformat-api-resources`
	 * :ref:`targetformat-object`
	 * :ref:`targetplatform-api-resources`
	 * :ref:`targetplatform-object`
	 * :ref:`userFormats-update`
	 * :ref:`userTargetFormat-getAll`
	 * :ref:`userTargetFormat-update`
	 * :ref:`userTargetPlatformFormat-getAll`
	 * :ref:`userTargetPlatforms-getAll`
	 * :ref:`userTargetPlatforms-update`
