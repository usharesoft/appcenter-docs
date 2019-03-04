.. Copyright FUJITSU LIMITED 2016-2019

.. _userOS-getAll:

userOS_getAll
-------------

.. function:: GET /users/{uid}/distros

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.2``

Retrieves all the operating systems the user has access to. 

A list of :ref:`appliance-object` objects are returned. 

You can use a ``search criteria`` to retrieve a subset of these appliances. 

.. warning:: The operating systems available for a user not only depends on the access rights given for the user but also the access rights of the operating system in the organization.

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

	curl "https://uforge.example.com/api/users/{uid}/distros" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`distribprofile-object`
	 * :ref:`userOS-update`
