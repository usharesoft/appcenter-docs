.. Copyright FUJITSU LIMITED 2016-2019

.. _installProfileUser-create:

installProfileUser_create
-------------------------

.. function:: POST /users/{uid}/appliances/{aid}/installProfile/{ipid}/users

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.4``

Adds a new OS user in an install profile. 

Refer to :ref:`osuser-object` for the mandatory and optional attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object` that has created the appliance
* ``ipid`` (required): the id of the :ref:`installprofile-object`
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`osUser-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/installProfile/{ipid}/users" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:osUser xmlns:ns0="http://www.usharesoft.com/uforge">
		<fullName>OSUserExample</fullName>
		<homeDir>/home/OSUserExample</homeDir>
		<name>OSUserExample</name>
		<password>password</password>
		<primaryGroupAuto>true</primaryGroupAuto>
		<shell>/bin/bash</shell>
		<systemUser>true</systemUser>
		<userIdAuto>true</userIdAuto>
	</ns0:osUser>


.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`applianceinstallprofile-api-resources`
	 * :ref:`installProfileGroup-create`
	 * :ref:`installProfileGroup-delete`
	 * :ref:`installProfileGroup-deleteAll`
	 * :ref:`installProfileGroup-get`
	 * :ref:`installProfileGroup-getAll`
	 * :ref:`installProfileGroup-update`
	 * :ref:`installProfileUser-delete`
	 * :ref:`installProfileUser-deleteAll`
	 * :ref:`installProfileUser-get`
	 * :ref:`installProfileUser-getAll`
	 * :ref:`installProfileUser-update`
	 * :ref:`installprofile-object`
	 * :ref:`osgroup-object`
	 * :ref:`osuser-object`
