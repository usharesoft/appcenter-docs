.. Copyright FUJITSU LIMITED 2016-2019

.. _applianceOSProfile-create:

applianceOSProfile_create
-------------------------

.. function:: POST /users/{uid}/appliances/{aid}/osprofile

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Adds a new OS profile to an appliance. 

Refer to `distribprofile-object` for mandatory and optional parameters

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object` that has created the appliance
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`distribProfile-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/osprofile" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:distribProfile xmlns:ns0="http://www.usharesoft.com/uforge">
		<name>Minimal</name>
		<standardProfileUri>distributions/1/profiles/4</standardProfileUri>
	</ns0:distribProfile>


.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`applianceOSProfileApplications-getAll`
	 * :ref:`applianceOSProfilePkg-getAll`
	 * :ref:`applianceOSProfilePkg-updateAll`
	 * :ref:`applianceOSProfileServices-getAll`
	 * :ref:`applianceOSProfile-delete`
	 * :ref:`applianceOSProfile-get`
	 * :ref:`applianceOSUpdates-get`
	 * :ref:`applianceOSUpdates-save`
	 * :ref:`distribprofile-object`
