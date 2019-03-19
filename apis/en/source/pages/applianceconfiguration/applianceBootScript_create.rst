.. Copyright FUJITSU LIMITED 2016-2019

.. _applianceBootScript-create:

applianceBootScript_create
--------------------------

.. function:: POST /users/{uid}/appliances/{aid}/bootscripts

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 2.1.06``

Adds a new boot script object to an appliance. 

This is just the meta-data of the boot script file.  Once created, you can upload the boot script file using :ref:`applianceBootScript-upload` 

Boot scripts have two types: 

- ``firstboot``: declaring that this boot script should only be executed once on the first time the instance is provisioned 

- ``everyboot``: declaring that this boot script should be executed every time the instance is rebooted. 

Refer to :ref:`bootscript-object` for more information on the boot script attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`bootScript-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/bootscripts" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:bootScript xmlns:ns0="http://www.usharesoft.com/uforge">
		<md5sum>e46d011c92f41cfc815213d968596081</md5sum>
		<sha256sum>3396aa52b2a0a401924525c52ce4ed1641d53f743ff35d8edfef368098912e8b</sha256sum>
		<size>26</size>
		<name>firstbootscript_example.sh</name>
		<bootOrder>1</bootOrder>
		<bootType>firstboot</bootType>
	</ns0:bootScript>


.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`applianceBootScript-delete`
	 * :ref:`applianceBootScript-deleteAll`
	 * :ref:`applianceBootScript-download`
	 * :ref:`applianceBootScript-downloadFile`
	 * :ref:`applianceBootScript-get`
	 * :ref:`applianceBootScript-getAll`
	 * :ref:`applianceBootScript-update`
	 * :ref:`applianceBootScript-upload`
	 * :ref:`bootscript-object`
