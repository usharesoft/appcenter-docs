.. Copyright FUJITSU LIMITED 2016-2019

.. _applianceOSProfilePkg-updateAll:

applianceOSProfilePkg_updateAll
-------------------------------

.. function:: PUT /users/{uid}/appliances/{aid}/osprofile/{osid}/pkgs

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Updates the native packages contained in an OS profile. 

.. warning:: All the packages that are not contained in the new package list are removed from the OS profile.  All new packages in the list will be added to the OS profile.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object` that has created the appliance
* ``osid`` (required): the id of the :ref:`linuxprofile-object`
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`packages-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/osprofile/{osid}/pkgs" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:packages xmlns:ns0="http://www.usharesoft.com/uforge">
		<addedPkgUris>
			<uri>distributions/1/pkgs/104169</uri>
			<uri>distributions/1/pkgs/104537</uri>
		</addedPkgUris>
		<deletedPkgUris></deletedPkgUris>
	</ns0:packages>


.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`applianceOSProfilePkg-getAll`
	 * :ref:`applianceOSProfile-create`
	 * :ref:`applianceOSProfile-delete`
	 * :ref:`applianceOSProfile-get`
	 * :ref:`applianceOSUpdates-get`
	 * :ref:`applianceOSUpdates-save`
	 * :ref:`distribprofile-object`
	 * :ref:`linuxprofile-object`
	 * :ref:`packages-object`
