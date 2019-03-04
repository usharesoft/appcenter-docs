.. Copyright FUJITSU LIMITED 2016-2019

.. _appliance-clone:

appliance_clone
---------------

.. function:: POST /users/{uid}/appliances/{aid}/clones

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Creates a new appliance by cloning all the meta-data of an existing appliance. 

A new appliance ``name`` and ``version`` is required for the new appliance

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object`
* ``aid`` (required): the id of the :ref:`appliance-object` to update

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`appliance-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/clones" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:appliance xmlns:ns0="http://www.usharesoft.com/uforge">
		<name>Appliance Clone Example</name>
		<orgUri>orgs/1</orgUri>
		<projects></projects>
		<version>1.0</version>
	</ns0:appliance>


.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`applianceLogo-delete`
	 * :ref:`applianceLogo-download`
	 * :ref:`applianceLogo-downloadFile`
	 * :ref:`applianceLogo-upload`
	 * :ref:`applianceMySoftware-getAll`
	 * :ref:`applianceProject-getAll`
	 * :ref:`appliance-create`
	 * :ref:`appliance-delete`
	 * :ref:`appliance-get`
	 * :ref:`appliance-getAll`
	 * :ref:`appliance-update`
	 * :ref:`user-object`
