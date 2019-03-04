.. Copyright FUJITSU LIMITED 2016-2019

.. _userTargetFormat-getAll:

userTargetFormat_getAll
-----------------------

.. function:: GET /users/{uid}/targetformats

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Retrieves all the target formats accessible by an user. 

A list of :ref:`targetplatform-object` objects are returned. 

You can use a ``search criteria`` to retrieve a subset of these target platforms. 

.. warning:: The target platforms available for a user not only depends on the access rights given for the user but also the access rights of the target platform in the organization.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``image_generate``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/targetformats" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`imageformat-object`
	 * :ref:`targetformat-api-resources`
	 * :ref:`targetformat-object`
	 * :ref:`targetplatform-api-resources`
	 * :ref:`targetplatform-object`
	 * :ref:`userFormats-getAll`
	 * :ref:`userFormats-update`
	 * :ref:`userTargetFormat-update`
	 * :ref:`userTargetPlatformFormat-getAll`
	 * :ref:`userTargetPlatforms-getAll`
	 * :ref:`userTargetPlatforms-update`
