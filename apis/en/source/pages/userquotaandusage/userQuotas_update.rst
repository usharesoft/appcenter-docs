.. Copyright FUJITSU LIMITED 2016-2019

.. _userQuotas-update:

userQuotas_update
-----------------

.. function:: PUT /users/{uid}/quotas

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.4``

Updates the quotas of an user.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`quotas-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/quotas" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:quotas xmlns:ns0="http://www.usharesoft.com/uforge">
		<quotas>
			<quota>
				<limit>-1</limit>
				<type>generation</type>
			</quota>
			<quota>
				<limit>10</limit>
				<type>appliance</type>
			</quota>
			<quota>
				<limit>-1</limit>
				<type>scan</type>
			</quota>
			<quota>
				<limit>-1</limit>
				<type>diskusage</type>
			</quota>
		</quotas>
	</ns0:quotas>


.. seealso::

	 * :ref:`quota-object`
	 * :ref:`statticket-object`
	 * :ref:`userQuotas-get`
	 * :ref:`userUsage-get`
