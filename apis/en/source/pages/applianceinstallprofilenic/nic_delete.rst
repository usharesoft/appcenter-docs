.. Copyright FUJITSU LIMITED 2016-2019

.. _nic-delete:

nic_delete
----------

.. function:: DELETE /users/{uid}/appliances/{aid}/installProfile/{ipid}/nics/{nid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.7``

Deletes the specified network interface card.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``ipid`` (required): the id of the :ref:`installprofile-object`
* ``nid`` (required): the id of the :ref:`nic-object` to delete
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/installProfile/{ipid}/nics/{nid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`installprofile-object`
	 * :ref:`nic-object`
	 * :ref:`nic-create`
	 * :ref:`nic-get`
	 * :ref:`nic-getAll`
	 * :ref:`nic-update`
	 * :ref:`nic-updateList`
	 * :ref:`user-object`
