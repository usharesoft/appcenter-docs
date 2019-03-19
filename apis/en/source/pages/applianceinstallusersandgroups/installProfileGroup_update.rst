.. Copyright FUJITSU LIMITED 2016-2019

.. _installProfileGroup-update:

installProfileGroup_update
--------------------------

.. function:: PUT /users/{uid}/appliances/{aid}/installProfile/{ipid}/groups/{osgid}

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.4``

Updates an OS group registered in an install profile.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object` that has created the appliance
* ``ipid`` (required): the id of the :ref:`installprofile-object`
* ``osgid`` (required): the id of the :ref:`osgroup-object`
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`osGroup-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/installProfile/{ipid}/groups/{osgid}" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:osGroup xmlns:ns0="http://www.usharesoft.com/uforge">
		<name>OS Group Example Updated</name>
		<systemGroup>false</systemGroup>
	</ns0:osGroup>


.. seealso::

	 * :ref:`installProfileGroup-create`
	 * :ref:`installProfileGroup-delete`
	 * :ref:`installProfileGroup-deleteAll`
	 * :ref:`installProfileGroup-get`
	 * :ref:`installProfileGroup-getAll`
	 * :ref:`installProfileUser-create`
	 * :ref:`installProfileUser-deleteAll`
	 * :ref:`installProfileUser-get`
	 * :ref:`installProfileUser-getAll`
	 * :ref:`installProfileUser-update`
