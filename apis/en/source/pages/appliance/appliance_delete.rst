.. Copyright FUJITSU LIMITED 2016-2019

.. _appliance-delete:

appliance_delete
----------------

.. function:: DELETE /users/{uid}/appliances/{aid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.6``

Deletes the specified appliance. 

The optional query parameter ``force`` can be used to ensure any asynchronous generation or publish activities are also stopped and deleted for this ``appliance``.  By default this is ``false``. 

.. warning:: this also deletes all associated machine images that have been generated from this appliance

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

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`applianceLogo-delete`
	 * :ref:`applianceLogo-download`
	 * :ref:`applianceLogo-downloadFile`
	 * :ref:`applianceLogo-upload`
	 * :ref:`applianceMySoftware-getAll`
	 * :ref:`applianceProject-getAll`
	 * :ref:`appliance-clone`
	 * :ref:`appliance-create`
	 * :ref:`appliance-get`
	 * :ref:`appliance-getAll`
	 * :ref:`appliance-update`
	 * :ref:`user-object`
