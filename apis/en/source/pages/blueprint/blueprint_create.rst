.. Copyright FUJITSU LIMITED 2016-2019

.. _blueprint-create:

blueprint_create
----------------

.. function:: POST /users/{uid}/blueprints

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.8.fp4``

Creates a blueprint in a user's ``Blueprint Library``. 

Please refer to :ref:`blueprint-object` for a complete list of all the attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``deployments_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`blueprint-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/blueprints" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:blueprint xmlns:ns0="http://www.usharesoft.com/uforge">
		<xsi:type></xsi:type>
		<name>My Blueprint</name>
		<description>My description</description>
		<version>7.0</version>
		<blueprintServices>
			<blueprintService>
				<serviceId>MariaDB</serviceId>
				<minCores>2</minCores>
				<minMemory>512</minMemory>
				<config>
 brooklyn.config:
 http.port: 80
 </config>
				<applianceSummary>
					<uri>users/guest/appliance/204</uri>
				</applianceSummary>
			</blueprintService>
		</blueprintServices>
	</ns0:blueprint>


.. seealso::

	 * :ref:`blueprint-object`
