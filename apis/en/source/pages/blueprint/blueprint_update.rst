.. Copyright FUJITSU LIMITED 2016-2019

.. _blueprint-update:

blueprint_update
----------------

.. function:: PUT /users/{uid}/blueprints/{bpid}

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.8.fp4``

Updates a blueprint from a user's ``Blueprint Library``.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``deployments_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``bpid`` (required): the id of the :ref:`blueprint-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`blueprint-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/blueprints/{bpid}" -X PUT \
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
